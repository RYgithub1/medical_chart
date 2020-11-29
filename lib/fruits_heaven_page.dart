import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          child: Container(),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height:40),
            // InteractiveViewer(
            //   minScale: 0.4,
            //   maxScale: 3.2,
            //   constrained: false,
            //   child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRoP5IzALZ8GLCt0w0-Rqj7AnRt_8U4-oGAXA&usqp=CAU"),
            // ),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRoP5IzALZ8GLCt0w0-Rqj7AnRt_8U4-oGAXA&usqp=CAU"),
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