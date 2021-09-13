import 'package:flutter/material.dart';
import 'package:moneybook/drawer_page.dart';

class AdminPanel extends StatelessWidget {
  int notification = 6;
  List<String> names = [
    "017000000",
    "0180000",
    "0180000",
    "018000",
    "55646546346",
    "6543",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => dwr()),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Withdraws"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.black12,
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.person),
                                    Text(names[index]),
                                    SizedBox(width: 10),
                                    Text("Withdrawed 100p"),
                                  ],
                                ),
                              ],
                            ),
                            ButtonBar(
                              children: <Widget>[
                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text('Number'),
                                  color: Colors.black,
                                  elevation: 10,
                                  onPressed: () {},
                                ),
                                InkWell(
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Text('Delete'),
                                        color: Colors.black,
                                        elevation: 10,
                                        onPressed: () {}))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
