import 'package:flutter/material.dart';

import 'routes.dart';

final demos = AppRoutes.getDemos();

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: new Container(
        decoration: new BoxDecoration(
          color: Colors.grey[200],
        ),
        child: new GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 1.0,
          children: demos.map((demo) {
            return _getWidget(demo, context);
          }).toList(),
        ),
      ),
    );
  }

  Widget _getWidget(Map demo, BuildContext context) {
    return new GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, demo['path']);
      },
      child: new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        alignment: Alignment.center,
        child: new Text(
          demo['name'],
          style: new TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
