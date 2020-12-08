import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';



class FruitsHeavenPage extends StatefulWidget {
  @override
  _FruitsHeavenPageState createState() => _FruitsHeavenPageState();
}



class _FruitsHeavenPageState extends State<FruitsHeavenPage>{

  var uuid = Uuid();  // define uuid f
  var uuidV1;
  var uuidV12;
  var uuidV4;
  var uuidV5;


  /// [--- build() ---]
  @override
  Widget build(BuildContext context) {
    /// [=== uuid作成 ===]
    /// [v1 (time-based) -> '6c84fb90-12c4-11e1-840d-7b25c5ee775a']
    uuidV1 = uuid.v1();
    print("uuidV1:"+uuidV1);
    uuidV12 = uuid.v1(
      options: {
        'node': [0x01, 0x23, 0x45, 0x67, 0x89, 0xab],
        'clockSeq': 0x1234,
        'mSecs': new DateTime.utc(2011,11,01).millisecondsSinceEpoch,
        'nSecs': 5678,
      },
    );
    print("uuidV12:"+uuidV1);
    /// [v4 (random) -> '110ec58a-a0f2-4ac4-8393-c866d813b8d1']
    uuidV4 = uuid.v4();
    print("uuidV4:"+uuidV4);
    /// [v5 (namespace-name-sha1-based) -> 'c74a196f-f19d-5ea9-bffd-a2742432fc9c']
    uuidV5 = uuid.v5(Uuid.NAMESPACE_URL, 'www.google.com');
    print("uuidV5:"+uuidV5);

    /// [=== NumberFormat ===]
    final formatterThreeDigitsDecimalZero = new NumberFormat("###");
          print(formatterThreeDigitsDecimalZero.format(123456789));
    final formatterThreeDigits = new NumberFormat("###.0#");
          print(formatterThreeDigits.format(123456789));
    final formatterThreeDigitsDecimal1 = NumberFormat("#,###.0");
    var value1 = (123456789 / 10000);
          print(formatterThreeDigitsDecimal1.format(value1)+"百万円");
    final formatterThreeDigitsDecimal2 = NumberFormat("#,###.0#");
    var value2 = (123456789 / 10000);
          print(formatterThreeDigitsDecimal2.format(value2)+"百万円");
    Function mathFunc = (Match match) => '${match[1]},';
          RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
          String result = '123456789円'.replaceAllMapped(reg, mathFunc);
          print('$result');


    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Fruits Heaven"),
          centerTitle: true,
          backgroundColor: Colors.pink[300],
        ),
        endDrawer: Drawer(
          child: Container()
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.22,
                child: SizedBox(height:40),
              ),
            ),
            // InteractiveViewer(
            //   minScale: 0.4,
            //   maxScale: 3.2,
            //   constrained: false,
            //   child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRoP5IzALZ8GLCt0w0-Rqj7AnRt_8U4-oGAXA&usqp=CAU"),
            // ),
            // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRoP5IzALZ8GLCt0w0-Rqj7AnRt_8U4-oGAXA&usqp=CAU"),
            Container(
              alignment: Alignment.topCenter,
              child: FractionallySizedBox(
                widthFactor: 0.88,
                child: CachedNetworkImage(
                    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRoP5IzALZ8GLCt0w0-Rqj7AnRt_8U4-oGAXA&usqp=CAU",
                    placeholder: (context, url) => CircularProgressIndicator(),  /// [考え中のくるくる]
                    errorWidget: (context, url, error) => Icon(Icons.error),  /// [エラーアイコン]
                ),
              ),
            ),
            SizedBox(height:40),
            Text("Any Order with SNS Auth",  style:TextStyle(fontWeight:FontWeight.bold, fontSize:32)),
            Divider(height:4, thickness:4, indent:32, endIndent:32),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.google, color:Colors.red),
                  onPressed: (){print("SNS/Google");},
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebook, color:Colors.blue),
                  onPressed: (){print("SNS/Facebook");},
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.apple, color:Colors.green),
                  onPressed: (){print("SNS/Apple");},
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.amazon, color:Colors.orange),
                  onPressed: (){print("SNS/Amazon");},
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}