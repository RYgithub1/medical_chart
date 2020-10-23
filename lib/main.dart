import 'package:flutter/material.dart';
import 'medical_alert.dart';
import 'medical_alert_home.dart';
import 'widget/setting_screen.dart';


void main() {runApp(MyApp());}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Medical Chart",
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      floatingActionButton: FloatingActionButton(  /// TODO:
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                // return SettingScreen();
                return MedicalAlert();
                // return MedicalAlertHome();
              },
            ),
          );
        },
      ),

    );
  }
}
