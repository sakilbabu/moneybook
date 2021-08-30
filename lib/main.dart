import 'package:flutter/material.dart';

import 'log_in.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  static const String _title = 'watch & earn';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: _title, home: login());
  }
}
