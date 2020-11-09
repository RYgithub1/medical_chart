import 'package:flutter/material.dart';



class FruitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("お見舞いFruits"),
          centerTitle: true,
          backgroundColor: Colors.pink[200],
        ),
        body: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.orange[100],
            BlendMode.saturation,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("ビタミンB", style: TextStyle(fontSize: 16)),
                  Spacer(flex:1),
                  Text("ビタミンC", style: TextStyle(fontSize: 16)),
                  Spacer(flex:2),
                  Text("ビタミンD", style: TextStyle(fontSize: 16)),
                  Spacer(flex:3),
                  Text("ビタミンE", style: TextStyle(fontSize: 16)),
                ],
              ),
              ListTile(title: Text("Apple")),
              ListTile(title: Text("Banana")),
              ListTile(title: Text("Grape")),
              ListTile(title: Text("Peach")),
              ListTile(title: Text("Pineapple")),
              ListTile(title: Text("Orange")),
              ListTile(title: Text("Mango")),
              ListTile(title: Text("Cherry")),
              ListTile(title: Text("Watermelon")),
              ListTile(title: Text("Lemon")),
            ],
          ),
        ),
      ),
    );
  }
}