import 'package:flutter/material.dart';


enum Answers{YES, NO}


class MedicalAlert extends StatefulWidget {
  @override
  _MedicalAlertState createState() => _MedicalAlertState();
}



class _MedicalAlertState extends State<MedicalAlert> {

  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _showDialog() async {
    var value = await showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('Got Alert!'),
        content: Column(
          children: <Widget>[
            Text('Are you OK?'),
            Image.asset("assets/images/medical_alert.png"),
          ]
        ),
        actions: <Widget>[
          SimpleDialogOption(
            child: Text('Yes'),
            onPressed: (){Navigator.pop(context, Answers.YES);},
          ),
          SimpleDialogOption(
            child: Text('NO'),
            onPressed: (){Navigator.pop(context, Answers.NO);},
          ),
        ],
      ),
    );
    switch(value) {
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('NO');
        break;
    }
  }


  /// [===== build() =====]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Alert'),
        centerTitle: true,
        backgroundColor: Colors.pink[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _value,
              style: TextStyle(fontSize:44, color: Colors.pink[800]),
            ),
            RaisedButton(
              onPressed: _showDialog,
              child: Text("Open Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}