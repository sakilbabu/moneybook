import 'package:flutter/material.dart';
import 'package:moneybook/admin_page.dart';

class AlertDlgPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AlertDlgPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text('admin'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(),
                  child: Text('Login'),
                  onPressed: () {
                    if (nameController.text == "abcd" &&
                        passwordController.text == "abcd") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AdminPanel()),
                      );
                    } else {
                      print("inco");
                    }
                  },
                )
              ],
            )));
  }
}
