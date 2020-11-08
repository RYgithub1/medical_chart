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
            Row(
              children: <Widget>[
                Text(
                  "Hello", style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(flex:1),
                Text("未来へ", style: TextStyle(fontSize: 16)),
                Spacer(flex:2),
                Text("World", style: TextStyle(fontSize: 16)),
                Spacer(flex:3),
                Text("挑戦", style: TextStyle(fontSize: 16)),
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
    );
  }
}