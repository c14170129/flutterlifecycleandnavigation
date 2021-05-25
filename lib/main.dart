import 'package:flutter/material.dart';
import 'package:latihanlifecycledannavigation/halHome.dart';
import 'halLogin.dart';
import 'halRegister.dart';
import 'halDeposito.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      title: "Latihan Lifecyle dan Navigation",
      routes: <String, WidgetBuilder>{
        '/': (context) => HalAwal(),
        '/halLogin': (context) => HalLogin(),
        '/halRegister': (context) => HalRegister(),
        '/halHome': (context) => HalHome(),
        '/halDeposito': (context) => HalDeposito(),
      },
    );
  }
}

class HalAwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/halLogin');
                  },
                  child: Text("LOGIN")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/halRegister');
                  },
                  child: Text("REGISTER")),
            ],
          ),
        ),
      ),
    );
  }
}
