import 'package:flutter/material.dart';
import 'package:moneybook/gateway_page.dart';
import 'package:moneybook/task_page.dart';

class login extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<login> {
  final _text = TextEditingController();
  final _pass = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text('moneybook'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(20), child: Text("sign in")),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _text,
                    decoration: InputDecoration(
                      errorText: _validate ? 'Username Can\'t Be Empty' : null,
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    obscureText: true,
                    controller: _pass,
                    decoration: InputDecoration(
                      errorText: _validate ? 'Password Can\'t Be Empty' : null,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Requird";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                ElevatedButton(
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black54,
                    ),
                    onPressed: () {
                      setState(() {
                        if (_text.text.isEmpty
                            ? _validate = true
                            : _validate = false) {
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => taskpage()),
                          );
                        }
                      });
                    }),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => gateway()),
                      );
                    },
                    child: Text(
                      "sign up",
                      style: TextStyle(),
                    ))
              ],
            )));
  }
}
