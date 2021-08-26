import 'package:flutter/material.dart';
import 'package:moneybook/task_page.dart';

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
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const taskpage()),
              );
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text("Balance Check out"),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(10, 150, 10, 10),
          color: Colors.white,
          width: double.infinity,
          height: 300,
          child: Stack(
            children: <Widget>[
              Positioned(
                  left: 50,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints:
                        const BoxConstraints(maxHeight: 100, maxWidth: 220),
                  )),
              Positioned(
                top: 25,
                child: InkWell(
                  onTap: () {
                    taka = taka + 100011;
                    setState(() {});
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      "assets/images/tap.png",
                      height: 50,
                      width: 100,
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 15,
                  left: 90,
                  child: Text(
                    "balance in BDT",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Positioned(
                  top: 40,
                  left: 120,
                  child: Text(
                    "$taka",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ))
            ],
          ),
        ));
  }
}
