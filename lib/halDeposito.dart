import 'package:flutter/material.dart';

class HalDeposito extends StatefulWidget {
  @override
  _HalDepositoState createState() => _HalDepositoState();
}

class _HalDepositoState extends State<HalDeposito> {
  double deposito = 0;
  double bunga = 0.4;
  double money = 1000000;
  double waktuPenempatan = 3;

  void countDeposito() {
    double tempDeposito =
        money + (((money * bunga) / 12) * waktuPenempatan).floor();
    setState(() {
      deposito = tempDeposito;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Uang",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Bank",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Jangka Waktu",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Jangka Waktu",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text("Output = $deposito"),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: countDeposito, child: Text("Hitung Deposito")),
          ],
        ),
      ),
    );
  }
}
