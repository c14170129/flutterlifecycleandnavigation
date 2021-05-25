import 'package:flutter/material.dart';

class HalHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/halDeposito');
                },
                child: Text("Hitung Deposito")),
          ],
        ),
      ),
    );
  }
}
