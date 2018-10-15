import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: new Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 10.0,
                color: Colors.black38,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Image.asset('assets/images/pic1.jpg'),
          ),
          Container(
            alignment: Alignment.center,
            width: 150.0,
            height: 50.0,
            decoration: BoxDecoration(color: Colors.red),
            child: new Text('Container'),
            margin: EdgeInsets.only(top: 8.0),
            transform: Matrix4.translationValues(40.0, 10.0, 0.0),
          ),
        ],
      ),
    );
  }
}
