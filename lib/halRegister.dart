import 'package:flutter/material.dart';
import 'dataUser.dart';

class HalRegister extends StatelessWidget {
  // const HalRegister({Key key, this.registeredUser}) : super(key: key);

  // // final User registeredUser;
  // // final _usernameController = TextEditingController();

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
                labelText: "Username",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(onPressed: () {}, child: Text("REGISTER")),
          ],
        ),
      ),
    );
  }
}
