import 'package:flutter/material.dart';



class NestedTabPage extends StatefulWidget {
  @override
  _NestedTabPageState createState() => _NestedTabPageState();
}


class _NestedTabPageState extends State<NestedTabPage> {
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
          Container(
            color: Colors.pink[200],
            height:52,
            child: Center(
              child: Text(
                "Nested Tab Questionnaire",
                style: TextStyle(fontSize:20, fontStyle:FontStyle.italic)
              )
            ),
          ),
          DefaultTabController(
            length: 4,
            initialIndex: 0,
            child: Column(
              children: <Widget>[
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
    );
  }
}