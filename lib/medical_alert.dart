import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';


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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Medical Alert'),
          centerTitle: true,
          backgroundColor: Colors.pink[200],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('お見舞いFruits'),
                decoration: BoxDecoration(
                  color: Colors.pink[400],
                ),
              ),
              ListTile(
                title: Text("GO BACK TO HOME"),
                onTap: (){Navigator.of(context).pop();},
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
        endDrawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                color: Colors.pinkAccent[400],
              ),
            ],
          ),
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
      ),
    );
  }
}