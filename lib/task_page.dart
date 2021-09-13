import 'package:flutter/material.dart';
import 'package:moneybook/profile.dart';
import 'videoPlaying_page.dart';
import 'ballance_page.dart';
import 'drawer_page.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  List<String> numberOfCards = [
    "october 1",
    "october 2",
    "october 3",
    "october 4",
    "october 5",
    "october 6",
    "october 7",
    "october 8",
    "october 9",
    "october 10",
    "october 11",
    "october 12",
    "october 13",
    "october 14",
    "october 15",
    "october 16",
    "october 17",
    "october 18",
    "october 19",
    "october 20",
    "october 21",
    "october 22",
    "october 23",
    "october 24",
    "october 25",
    "october 26",
    "october 27",
    "october 28",
    "october 29",
    "october 30"
  ];

  List<Tab> tabs = <Tab>[
    Tab(
        child: Icon(
      Icons.video_collection,
      color: Colors.black,
    )),
    Tab(
        child: Icon(
      Icons.privacy_tip_outlined,
      color: Colors.black,
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
                leading: Icon(Icons.menu),
                backgroundColor: Colors.white,
                title: Text(
                  "moneybook",
                  style: TextStyle(color: Colors.black),
                ),
                bottom: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(00), // Creates border
                      color: Colors.white),
                  tabs: tabs,
                ),
                actions: [
                  IconButton(
                      icon: Icon(
                        Icons.attach_money_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BalancePage()),
                        );
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()),
                        );
                      }),
                ],
              ),
              drawer: dwr(),
              body: TabBarView(
                children: [
                  Center(
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemCount: numberOfCards.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Card(
                                color: Colors.deepOrange[100],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => VideoPlay()),
                                    );
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Image.network(
                                          "https://images.unsplash.com/photo-1631499264602-60f495f5b657?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                      ListTile(
                                        leading: Icon(
                                          Icons.video_collection,
                                          color: Colors.black,
                                        ),
                                        title: Text(
                                          numberOfCards[index],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })),
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('''Terms and Policies

 1. A/c registration fees BDT 10000/-.
 2.Premium registration 1500/-.
 3. Users need to watch each full video(only for the first month). 
 4. A/c validity 1 year.
 5. A/c renew fees BDT 1000.
 6. Only for full time watches,users will get rewarded BDT 300/- 
 7. premium members will get rewarded BDT 500/- . 
 8. Per every single refer , user will get BDT 1000/- 
 9. Changes applicable .
'''),
                    ),
                  )
                ],
              ));
        }));
  }
}
