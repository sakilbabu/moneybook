import 'package:flutter/material.dart';
import 'package:moneybook/task_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _text = TextEditingController();
  final _pass = TextEditingController();
  bool _validate = false;
  List<String> names = ["sakil", "muktarul"];
  List<String> pass = ["1234", "1111"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 120, 10, 00),
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(80, 00, 60, 00),
                            child: TextFormField(
                              controller: _text,
                              decoration: InputDecoration(
                                  errorText: _validate
                                      ? 'Password Can\'t Be Empty'
                                      : null,
                                  prefixIcon: Icon(Icons.person),
                                  labelText: "Username"),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(80, 00, 60, 00),
                            child: TextFormField(
                              controller: _pass,
                              obscureText: true,
                              decoration: InputDecoration(
                                  errorText: _validate
                                      ? 'Password Can\'t Be Empty'
                                      : null,
                                  prefixIcon: Icon(Icons.password),
                                  labelText: "password"),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                if (names.contains(_text.text)) {
                                  var index = names.indexOf(_text.text);
                                  if (pass[index] == _pass.text) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TaskPage()),
                                    );
                                  }
                                }
                              },
                              child: Text("login"))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
