import 'package:flutter/material.dart';

class admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> myProducts = ["sakil", "sakil"];
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            child: Column(
          children: [
            Container(
              // Use ListView.builder
              child: Expanded(
                child: ListView.builder(
                    // the number of items in the list
                    itemCount: myProducts.length,

                    // display each item of the product list
                    itemBuilder: (context, index) {
                      return Card(
                        // In many cases, the key isn't mandatory
                        key: UniqueKey(),
                        child: Padding(
                            padding: EdgeInsets.all(10), child: Text("fhdfs")),
                      );
                    }),
              ),
            )
          ],
        )));
  }
}
