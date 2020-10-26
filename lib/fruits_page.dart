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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
    );
  }
}