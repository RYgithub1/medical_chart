import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Medical Chart")),
          backgroundColor: Colors.pink[200],
        ),
        body: Stack(
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/sample_medical_doctors.jpg"),
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.only(top:33),
              child: DraggableScrollableSheet(builder: (BuildContext context, controller) { /// [DraggableScrollableSheet]
                return Container(
                  child: ListView.builder(
                    controller: controller,  /// [controller !!]
                    itemCount: 22,
                    itemBuilder: (BuildContext context, index) { /// []
                      return ListTile(
                        title: Text("YOUR INFO : ${index+1}"),
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
