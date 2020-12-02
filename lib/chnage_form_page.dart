import 'package:flutter/material.dart';


class ChnageFormPage extends StatefulWidget {
  @override
  _ChnageFormPageState createState() => _ChnageFormPageState();
}


class _ChnageFormPageState extends State<ChnageFormPage> {
  bool _flag = false;
  void _handleCheckbox(bool flagValue) {
    setState(() {
      _flag = flagValue;
    });
  }

  bool _flagListTile = false;
  void _handleCheckboxListTile(bool flagValueListTile) {
    setState(() {
      _flagListTile = flagValueListTile;
    });
  }

  bool _flagButton = false;
  void _handleCheckboxButton(bool flagValueButton) {
    setState(() {
      _flagButton = flagValueButton;
    });
  }

  var _flagSwitchList = true;
  void _handleCheckboxSwitchList(bool flagValueSwitchList) {
    setState(() {
      _flagSwitchList = flagValueSwitchList;
    });
  }



  /// [=== build() ===]
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        appBar: new AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: (){Navigator.of(context).pop();},
          ),
          title: new Text('THE CHECK'),
          centerTitle: true,
          backgroundColor: Colors.pink[200],
        ),

        body: new Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(12),
          child: new Column(
            children: <Widget>[
              new Text("Checkbox"),
              new Center(
                child: new Icon(
                  Icons.thumb_up,
                  color: _flag
                    ? Colors.orange[700]
                    : Colors.grey[300],
                  size: 60,
                ),
              ),
              new Checkbox(
                activeColor: Colors.pink,
                value: _flag,
                onChanged: _handleCheckbox,
              ),

              new Divider(thickness:2 , height: 2, color: Colors.pink[900]), /// [--------]
              new SizedBox(height: 20),
              new Text("CheckboxListTile"),
              new CheckboxListTile(
                activeColor: Colors.green,
                title: new Text('SELF CHECK ITEM'),
                subtitle: new Text('ask nurce if any'),
                secondary: new Icon(
                  Icons.thumb_up,
                  color: _flagListTile
                    ? Colors.orange[700]
                    : Colors.grey[300],
                ),
                controlAffinity: ListTileControlAffinity.leading,
                value: _flagListTile,
                onChanged: _handleCheckboxListTile,
              ),

              new Divider(thickness:2 , height: 2, color: Colors.pink[900]), /// [--------]
              new SizedBox(height: 20),
              new Text("CheckboxButton"),
              new RaisedButton(
                child: Text(
                  "         Agree         ",
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: !_flagButton
                  ? null
                  : () {print("Agree to app policy");},
                color: _flagButton
                  ? Colors.orange[700]
                  : Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    activeColor: Colors.purple,
                    value: _flagButton,
                    onChanged: _handleCheckboxButton,
                  ),
                  Text("Read app policy"),
                ],
              ),

              new Divider(thickness:2 , height: 2, color: Colors.pink[900]), /// [--------]
              new SizedBox(height: 20),
              new Text("SwitchListTile"),
              new SwitchListTile(
                activeColor: Colors.orange[700],
                value: _flagSwitchList,
                title: new Text(
                  "Switch List",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                onChanged: _handleCheckboxSwitchList,
              )

            ],
          )
        ),
      ),
    );
  }


}
