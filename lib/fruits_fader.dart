import 'package:flutter/material.dart';



class FruitsFader extends StatefulWidget {
  @override
  _FruitsFaderState createState() => _FruitsFaderState();
}



class _FruitsFaderState extends State<FruitsFader>
with SingleTickerProviderStateMixin {

  AnimationController _controllerFade;
  Animation _animationFade;

  @override
  void initState() {
    _controllerFade = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );
    _animationFade = Tween(begin: 0.0, end:7.0).animate(_controllerFade);
  }
  @override
  void dispose() {
    _controllerFade.dispose();
    super.dispose();
  }


  /// [--- build() ---]
  @override
  Widget build(BuildContext context) {
    _controllerFade.forward();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ByeBye fruits"),
          backgroundColor: Colors.pink[900],
        ),
        body: Center(
          child: FadeTransition(
            opacity: _animationFade,
            // child: widget.child,
            child: Text(
              "Couldn't eat ...",
              style: TextStyle(fontSize:32),
            ),
          ),
        ),
      ),
    );
  }
}