import 'package:flutter/material.dart';

import 'fruits_fader.dart';
import 'fruits_heaven_page.dart';



class FruitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Get-well Fruits"),
          centerTitle: true,
          backgroundColor: Colors.pink[200],
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FruitsHeavenPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.more_horiz, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FruitsFader()),
                );
              },
            ),
          ],
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
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: <Widget>[
                    new Icon(Icons.graphic_eq),
                    const SizedBox(width:12),
                    const Text('FRUITES POWER !!'),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}