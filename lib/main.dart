import 'package:flutter/material.dart';

import './home.dart';
import './login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demos',
      routes: {
        '/': (BuildContext context) => new Home(),
        '/login': (BuildContext context) => new Login()
      },
    );
  }
}
