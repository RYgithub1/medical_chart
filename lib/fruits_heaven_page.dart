import 'package:flutter/material.dart';



class FruitsHeavenPage extends StatefulWidget {
  @override
  _FruitsHeavenPageState createState() => _FruitsHeavenPageState();
}



class _FruitsHeavenPageState extends State<FruitsHeavenPage>{
  /// [--- build() ---]
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
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
        body: InteractiveViewer(
          minScale: 0.4,
          maxScale: 3.2,
          constrained: false,
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRoP5IzALZ8GLCt0w0-Rqj7AnRt_8U4-oGAXA&usqp=CAU"),
        ),
      ),
    );

  }
}