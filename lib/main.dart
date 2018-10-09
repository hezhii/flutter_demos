import 'package:flutter/material.dart';

import 'routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demos',
      initialRoute: '/',
      routes: routes,
    );
  }
}
