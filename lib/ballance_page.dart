import 'package:flutter/material.dart';
import 'package:moneybook/task_page.dart';

import 'gateway_page.dart';

class BalancePage extends StatefulWidget {
  const BalancePage({Key? key}) : super(key: key);

  @override
  _BalancePageState createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  var taka;

  @override
  void initState() {
    taka = 5000;
    super.initState();
  }

  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TaskPage()),
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
                    onTap: () {},
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
                    onPressed: () {
                      showAlertDialog(context);
                    },
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
                      MaterialPageRoute(builder: (context) => GatewayPage()),
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

TextEditingController nameController = TextEditingController();
showAlertDialog(BuildContext context) {
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed: () {
      Navigator.pop(
        context,
        MaterialPageRoute(builder: (context) => BalancePage()),
      );
    },
  );
  Widget continueButton = TextButton(
    child: Text("Withdraw"),
    onPressed: () {},
  );

  var nameController;
  AlertDialog alert = AlertDialog(
    title: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Amount',
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Number',
            ),
          ),
        ],
      ),
    ),
    content: Text(
        "Enter the amount of points you would like to withdraw with bkash number"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
