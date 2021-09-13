import 'package:flutter/material.dart';

import 'login_page.dart';

class GatewayPage extends StatelessWidget {
  const GatewayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Payment Gateway"),
      ),
      body: Center(
        child: Container(
          width: 200,
          child: Center(
            child: Column(
              children: [
                Text("017xxxxxxxx"),
                SizedBox(height: 20),
                Text("017xxxxxxxx"),
                SizedBox(height: 20),
                Text("1. Send 8000 BDT to get ordinary account"),
                SizedBox(height: 20),
                Text("2. Send 15000 BDT to get ordinary account"),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  child: Text(
                      "3. After Sending one of those amount you will get an reply sms with usename and password"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
