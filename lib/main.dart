import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirst/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyFirtsApp"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            margin: EdgeInsets.all(8.0),
            child: Text(
              "Hallo Flutter, ini aplikasi pertama saya",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: ButtonTheme(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeTwo()));
                    },
                    child: Text(
                      "Click Me",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 120),
                        minimumSize: Size(220, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))))),
          ),
        ],
      ),
    );
  }
}

class HomeTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeRun(),
    );
  }
}

class HomeRun extends StatelessWidget {
  const HomeRun({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            iconSize: 25.0,
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Back',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
          title: Text("Home Kedua"),
          actions: <Widget>[],
        ),
        body: Container(
            color: Colors.purple,
            alignment: Alignment.center,
            child: Text("Ayo Belajar Flutter",
                style: TextStyle(fontSize: 20, color: Colors.white))));
  }
}
