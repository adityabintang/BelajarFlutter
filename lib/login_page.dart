import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirst/main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: txtUsername,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(hintText: "Masukkan Username"),
                    validator: (txtUsername) {
                      if (txtUsername == null || txtUsername.isEmpty) {
                        return 'Silahkan Masukkan UserName Anda';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: txtPassword,
                    obscureText: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(hintText: "Masukkan Password"),
                    validator: (txtPassword) {
                      if (txtPassword == null || txtPassword.isEmpty) {
                        return 'Silahkan Masukkan Password Anda';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: ButtonTheme(
                      child: ElevatedButton(
                    onPressed: () {
                      String username = txtUsername.text;
                      String password = txtPassword.text;
                      if (username == 'admin' && password == 'admin') {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomePage()));
                        // showDialog(
                        //     context: context,
                        //     builder: (BuildContext context) => AlertDialog(
                        //           title: Text("Login"),
                        //           content: Text("Login Berhasil"),
                        //           actions: <Widget>[
                        //             TextButton(
                        //                 onPressed: () {
                        //                   Navigator.pop(context);
                        //                 },
                        //                 child: Text(
                        //                   "OK",
                        //                   style: TextStyle(color: Colors.blue),
                        //                 ))
                        //           ],
                        //         )
                        // );
                      }
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 120),
                        minimumSize: Size(220, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
