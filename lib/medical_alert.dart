import 'package:flutter/material.dart';
import 'fruits_page.dart';


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
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.orange[200],
                // BlendMode.modulate,
                // BlendMode.darken,
                // BlendMode.colorBurn,
                BlendMode.difference
              ),
              child: Image.asset("assets/images/medical_alert.png"),
            ),
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){Navigator.of(context).pop();},
          ),
          title: Text('Medical Alert'),
          centerTitle: true,
          backgroundColor: Colors.pink[200],
        ),
        endDrawer: Drawer(   /// [endDrawer()]
          child: Column(
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 100,
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.only(top:20, bottom:20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage("https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5ec595d45f39760007b05c07%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D989%26cropX2%3D2480%26cropY1%3D74%26cropY2%3D1564"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      "Enjoy Today!",
                      style: TextStyle(fontSize:24, color:Colors.black),
                    ),
                  ],
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {print("Emergency");},
                  child: Center(
                    child: Text(
                      "> Emergency <",
                      style: TextStyle(fontSize:18, color:Colors.red),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Tooltip(
                  message:"onTap:chat , onLongPress:call",
                  child: Text("Lionel Messi"),
                ),
                subtitle: Text("my contacts"),
                trailing: Icon(Icons.info_outline),
                onTap: (){print("startToChat");},
                onLongPress: (){print("calling");},
              ),
              ListTile(
                leading: Icon(Icons.schedule),
                title: Text("Schedule"),
                onTap: (){print("Schedule");},
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Hobby (Eating Fruits)"),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FruitsPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contacts"),
                onTap: (){print("Contacts");},
              ),
              ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text("Finance"),
                onTap: (){print("Finance");},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: (){print("Settings");},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log Out"),
                onTap: (){print("Log Out");},
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