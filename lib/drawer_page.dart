import 'package:flutter/material.dart';

import 'alertdlg_page.dart';

class dwr extends StatelessWidget {
  const dwr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(100),
        ),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.only(
              top: 0.0,
            ),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              DrawerHeader(
                child: Text('Watch and earn community '),
                decoration: BoxDecoration(color: Colors.black54),
              ),
              ListTile(
                leading: Icon(
                  Icons.add_circle_outlined,
                  color: Colors.blueGrey,
                ),
                title: const Text('Mail Us'),
                trailing: Icon(
                  Icons.mail,
                  color: Colors.blueGrey,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.add_circle_outlined,
                  color: Colors.blueGrey,
                ),
                title: const Text('Rate Us'),
                trailing: Icon(
                  Icons.star_rate,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.add_circle_outlined,
                  color: Colors.blueGrey,
                ),
                title: const Text('Admin Panel'),
                trailing: Icon(
                  Icons.admin_panel_settings,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDlgPage(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
