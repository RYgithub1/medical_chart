import 'package:flutter/material.dart';

import 'widget/bubble_border.dart';



class NestedTabPage extends StatefulWidget {
  @override
  _NestedTabPageState createState() => _NestedTabPageState();
}


class _NestedTabPageState extends State<NestedTabPage> {
  int _selectedIndex = 0;

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
                    Tab(text:"ob1:THX", icon:Icon(Icons.person)),
                    Tab(text:"ob2:LIFE", icon:Icon(Icons.house)),
                    Tab(text:"ob3:FOOD", icon:Icon(Icons.emoji_food_beverage)),
                    Tab(text:"ob4:SLEEP", icon:Icon(Icons.timelapse)),
                  ],
                ),
                Container(
                  height: 350,
                  child: TabBarView(  /// [Expanded]
                    children: [
                      Center(child: Text("ALPHA")),
                      Center(child: Text("BETA")),
                      Center(child: Text("GAMMA")),
                      Center(child: Text("DELTA")),
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

  /// [when user tap]
  void _onItemTapped(int indexValue) {
    setState(() {
    _selectedIndex = indexValue;   /// [初期化せな]
  });
  }
}
