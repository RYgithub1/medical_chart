import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'widget/bubble_border.dart';



class NestedTabPage extends StatefulWidget {
  @override
  _NestedTabPageState createState() => _NestedTabPageState();
}


class _NestedTabPageState extends State<NestedTabPage> {
  int _selectedIndex = 0;

  String _alphaText = '';
  void _handleAlphaText(String str) {
    setState(() {
      _alphaText = str;
    });
  }
  String _betaText = '';
  void _handleBetaText(String str) {
    setState(() {
      _betaText = str;
    });
  }


  final TextEditingController _textEditingController = new TextEditingController();
  final TextEditingController _textEditingControllerBeta = new TextEditingController();
  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_printLatestValue);
    _textEditingControllerBeta.addListener(_printLatestValueBeta);
  }
  @override
  void dispose() {
    _textEditingController.dispose();
    _textEditingControllerBeta.dispose();
    super.dispose();
  }
  void _printLatestValue() {
    print("input_content: ${_textEditingController.text}");
  }
  void _printLatestValueBeta() {
    print("input_content_beta: ${_textEditingControllerBeta.text}");
  }

  /// [GAMMA]
  double _sliderValue = 0.0;
  void _changeSlider(double e) => setState(() { _sliderValue = e; });



  /// [========== build() ==========]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Health Check"),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height:12),
          Row(
            children: <Widget>[
              ClipOval(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.only(left:28),
                  child: Image.network("https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5ec595d45f39760007b05c07%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D989%26cropX2%3D2480%26cropY1%3D74%26cropY2%3D1564"),
                ),
              ),
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal:20, vertical:12),
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal:20),
                decoration: ShapeDecoration(
                  color: Colors.pink[100],
                  shape: BubbleBorder(),
                ),
                child: Text(
                  "Nested Tab Questionnaire Time!",
                  style: TextStyle(
                    fontSize:16,
                    color:Colors.pink,
                    fontStyle:FontStyle.italic
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          DefaultTabController(
            length: 4,
            initialIndex: 0,
            child: Column(
              children: <Widget>[
                TabBar(
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.pink[900],
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(text:"EXERCISE", icon:Icon(Icons.person)),
                    Tab(text:"LIFE", icon:Icon(Icons.house)),
                    Tab(text:"FOOD", icon:Icon(Icons.emoji_food_beverage)),
                    Tab(text:"SLEEP", icon:Icon(Icons.timelapse)),
                  ],
                ),
                Container(
                  height: 350,
                  child: TabBarView(  /// [Expanded]
                    children: [

                      Column(
                        children: <Widget>[
                          Text("ALPHA"),
                          SizedBox(height:20),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left:60),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "What kind of exercise do you do?",
                                    style: TextStyle(fontSize:20, color:Colors.pink),
                                  ),
                                ),
                              ),
                              Text(
                                "$_alphaText",
                                style: TextStyle(
                                  fontSize:16,
                                  color: Colors.blue,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Container(
                                height: 80,
                                padding: EdgeInsets.symmetric(horizontal:12),
                                child: TextField(
                                  enabled: true,   // active or noAactive
                                  /// [Constraint]
                                  maxLines:1 ,
                                  maxLength: 77,
                                  maxLengthEnforced: false,
                                  obscureText: false,  // notPassword
                                  style: TextStyle(color: Colors.pink[900]),
                                  ///  [onChanged]
                                  onChanged: _handleAlphaText,
                                  controller: _textEditingController,
                                  /// [Decoration]
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                    hintText: "Exercise",
                                    contentPadding: EdgeInsets.all(10),
                                    icon: Icon(
                                      Icons.check,
                                      color: Colors.grey[300],
                                    ),
                                    suffixIcon: Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.pink[400],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:60),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "How often do you do?",
                                    style: TextStyle(fontSize:20, color:Colors.pink),
                                  ),
                                ),
                              ),
                              Text(
                                "$_betaText",
                                style: TextStyle(
                                  fontSize:16,
                                  color: Colors.blue,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Container(
                                height: 80,
                                padding: EdgeInsets.symmetric(horizontal:12),
                                child: TextField(
                                  enabled: true,   // active or noAactive
                                  /// [Constraint]
                                  maxLines:1 ,
                                  maxLength: 77,
                                  maxLengthEnforced: false,
                                  obscureText: false,  // notPassword
                                  style: TextStyle(color: Colors.pink[900]),
                                  ///  [onChanged]
                                  onChanged: _handleBetaText,
                                  controller: _textEditingControllerBeta,
                                  /// [Decoration]
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    hintText: "twice a week",
                                    contentPadding: EdgeInsets.all(10),
                                    icon: Icon(
                                      Icons.check,
                                      color: Colors.pink[400],
                                    ),
                                    suffixIcon: Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.pink[400],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(child: Text("BETA")),
                          CircularPercentIndicator(
                            radius: 99.0,
                            lineWidth: 22.0,
                            animation: true,
                            percent: 66/100,   /// [count percentage]
                            center: Text(
                              "66%",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                            ),
                            footer: Text(
                              "Dayly Performance",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Colors.pink[200],
                            progressColor: Colors.pink[600],
                          ),
                          CircularPercentIndicator(
                            radius: 99.0,
                            lineWidth: 22.0,
                            animation: true,
                            percent: 88/100,   /// [count percentage]
                            center: Text(
                              "88%",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                            ),
                            footer: Text(
                              "Monthly Performance",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Colors.pink[200],
                            progressColor: Colors.pink[600],
                          ),
                        ],
                      ),
                      
                      Column(
                        children: <Widget>[
                          Center(child: Text("GAMMA")),
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSHC9FvzxW65uVVDWtLV7qJ9-FI71iOfv4Lvg&usqp=CAU",
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                            colorBlendMode: BlendMode.modulate
                          ),
                          Column(
                            children: <Widget>[
                              SizedBox(height:24),
                              Center(child:Text("Calorimeter")),
                              Center(child:Text("現在の値：${_sliderValue}")),
                              Slider(
                                label: '${_sliderValue}',
                                min: 0,
                                max: 7,
                                value: _sliderValue,
                                activeColor: Colors.pink[600],
                                inactiveColor: Colors.pink[200],
                                divisions: 7,
                                onChanged: _changeSlider,
                              )
                            ],
                          )
                        ],
                      ),

                      Column(
                        children: <Widget>[
                          Center(child: Text("DELTA")),
                          Expanded(
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.pink[200],
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        "assets/images/baby_sleep.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 80,
                                  left: 28,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          RawMaterialButton(
                                            onPressed: () {},
                                            elevation: 0,
                                            fillColor: Colors.pink[300],
                                            child: Icon(
                                              Icons.arrow_left,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            padding: EdgeInsets.all(15.0),
                                            shape: CircleBorder(),
                                          ),
                                          SizedBox(height:8),
                                          Text(
                                            "Fun",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 180),
                                      Column(
                                        children: <Widget>[
                                          RawMaterialButton(
                                            onPressed: () {},
                                            elevation: 0,
                                            fillColor: Colors.pink[300],
                                            child: Icon(
                                              Icons.arrow_right,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            padding: EdgeInsets.all(15.0),
                                            shape: CircleBorder(),
                                          ),
                                          SizedBox(height:8),
                                          Text(
                                            "Relax",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),







                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      Text('Back'),
                    ],
                  ),
                  onPressed: () {},
                  shape: StadiumBorder(),
                  color: Colors.pink[200],
                  textColor: Colors.white,
                ),
                FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('Next'),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  onPressed: () {},
                  shape: StadiumBorder(),
                  color: Colors.pink[200],
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Photo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Video',
          ),
        ],
        currentIndex: _selectedIndex,   /// [when user tap]
        onTap: _onItemTapped,   /// [when user tap]
      ),
    );
  }


  /// [sup: when user tap]
  void _onItemTapped(int indexValue) {
    setState(() {
      _selectedIndex = indexValue;   /// [初期化せな]
    });
  }

}


