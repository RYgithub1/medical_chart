import 'package:flutter/material.dart';


enum Answers{YES, NO}


class MedicalAlert extends StatefulWidget {
  @override
  _MedicalAlertState createState() => _MedicalAlertState();
}



class _MedicalAlertState extends State<MedicalAlert> {
  List<String> animalName = [
    "dog", "cat", "panda", "deer", "rat", "tiger", "mow", "chicken", "rabit",
    "dragon", "horse", "sheep", "monkey", "pig", "elephant", "zebra", "snake",
  ];

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

            SizedBox(height:44),
            Divider(
              height:4,
              thickness:20,
              color: Colors.grey[300],
              indent: 100,
            ),
            Divider(
              height:4,
              thickness:20,
              color: Colors.grey[300],
              indent: 100,
              endIndent: 100,
            ),
            Divider(
              height:4,
              thickness:20,
              color: Colors.grey[300],
              endIndent: 100,
            ),
            Center(
              child: Text(
                "Available Doctor",
                style: TextStyle(
                  fontSize:32,
                  color: Colors.grey[800],
                  fontWeight:FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.end,
              spacing: 12,
              runSpacing: 20,
              children: <Widget>[
                Chip(
                  label: Text(animalName[0]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.green[100],
                  ),
                ),
                Chip(
                  label: Text(animalName[1]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.green[200],
                  ),
                ),
                Chip(
                  label: Text(animalName[2]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.green[300],
                  ),
                ),
                Chip(
                  label: Text(animalName[3]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.green[400],
                  ),
                ),
                Chip(
                  label: Text(animalName[4]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.green[500],
                  ),
                ),
                Chip(
                  label: Text(animalName[5]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.green[600],
                  ),
                ),
                Chip(
                  label: Text(animalName[6]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.green[700],
                  ),
                ),
                Chip(
                  label: Text(animalName[7]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.green[800],
                  ),
                ),
                Chip(
                  label: Text(animalName[8]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.orange[100],
                  ),
                ),
                Chip(
                  label: Text(animalName[9]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.orange[200],
                  ),
                ),
                Chip(
                  label: Text(animalName[10]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.orange[300],
                  ),
                ),
                Chip(
                  label: Text(animalName[11]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.orange[400],
                  ),
                ),
                Chip(
                  label: Text(animalName[12]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.orange[500],
                  ),
                ),
                Chip(
                  label: Text(animalName[13]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.orange[600],
                  ),
                ),
                Chip(
                  label: Text(animalName[14]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.orange[700],
                  ),
                ),
                Chip(
                  label: Text(animalName[15]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.orange[800],
                  ),
                ),
                Chip(
                  label: Text(animalName[16]),
                  autofocus: true,
                  elevation: 10,
                  avatar: CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.orange[900],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}