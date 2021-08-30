import 'package:flutter/material.dart';
import 'package:moneybook/profile.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ballance.dart';
import 'drawer.dart';

class taskpage extends StatefulWidget {
  @override
  _taskpageState createState() => _taskpageState();
}

class _taskpageState extends State<taskpage> {
  List<String> numberOfCards = [
    "Task 1",
    "Task 2",
    "Task 3",
    "Task 4",
    "Task 5",
    "Task 6"
  ];
  List<String> numberOfLinks = [
    "https://youtu.be/7tNPxY_ntEA?t=69",
    "https://youtu.be/W0DM5lcj6mw?list=RDMM&t=3",
    "https://youtu.be/q-RP99S_qK0?list=RDMM",
    "https://youtu.be/KPQTHLnqORw?list=RDMM&t=3",
    "https://youtu.be/ZTBwxy4wsBQ?list=RDMM",
    "https://youtu.be/vaMbrYf6ubQ?list=RDMM"
  ];
  List<Tab> tabs = <Tab>[
    Tab(
        child: Icon(
      Icons.video_collection,
      color: Colors.blueGrey,
    )),
    Tab(
        child: Icon(
      Icons.privacy_tip_outlined,
      color: Colors.blueGrey,
    )),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context)!;
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {}
          });
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black54,
                title: Text("moneybook"),
                bottom: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(00), // Creates border
                      color: Colors.black26),
                  tabs: tabs,
                ),
                actions: [
                  IconButton(
                      icon: Icon(
                        Icons.attach_money_outlined,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const balance()),
                        );
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => profile()),
                        );
                      }),
                ],
              ),
              drawer: dwr(),
              body: TabBarView(
                children: [
                  Center(
                      child: ListView.builder(
                          itemCount: numberOfCards.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.brown,
                                elevation: 10,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(
                                      leading: Icon(
                                        Icons.video_collection,
                                        size: 100,
                                        color: Colors.blueGrey,
                                      ),
                                      title: Text(numberOfCards[index],
                                          style: const TextStyle(fontSize: 20)),
                                      subtitle: const Text(
                                          'Click on open to earn',
                                          style: TextStyle(fontSize: 15)),
                                    ),
                                    ButtonBar(
                                      children: <Widget>[
                                        RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: const Text('skip'),
                                          onPressed: () {},
                                        ),
                                        InkWell(
                                          child: RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: const Text('watch'),
                                              onPressed: () =>
                                                  launch(numberOfLinks[index])),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          })),
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('''Terms and Policies

 1. A/c registration fees BDT 3000/-.
 2.Premium registration 8000/-.
 3. Users need to watch each full video(only for the first month). 
 4. A/c validity 1 year.
 5. A/c renew fees BDT 1000.
 6. Only for full time watches , users will get rewarded BDT 100/- and premium members will get rewarded BDT 250/- . 
 7. Per every single refer , user will get BDT 100/- 
 7. Changes applicable .
'''),
                    ),
                  )
                ],
              ));
        }));
  }
}
