import 'package:flutter/material.dart';
import 'package:moneybook/task_page.dart';

import 'gateway_page.dart';

class balance extends StatefulWidget {
  const balance({Key? key}) : super(key: key);

  @override
  _balanceState createState() => _balanceState();
}

class _balanceState extends State<balance> {
  var taka;

  @override
  void initState() {
    taka = 5000;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => taskpage()),
              );
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text("Balance Check out"),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                  child: Column(children: [
                Container(
                    child: Text(
                  "balance in BDT",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                SizedBox(height: 15),
                Container(
                    child: Text(
                  "$taka",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )),
                SizedBox(height: 15),
                Container(
                  child: InkWell(
                    onTap: () {
                      taka = taka + 100011;
                      setState(() {});
                    },
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Icon(
                          Icons.monetization_on_rounded,
                          size: 50,
                          color: Colors.red,
                        )),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Withdraw"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => gateway()),
                    );
                  },
                  child: ClipRect(
                    child: Text(
                      "click here to know about payment gateway",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ))
              ])),
            ],
          ),
        ));
  }
}
