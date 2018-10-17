import 'package:flutter/material.dart';

class PaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text('padding left 16.0'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('padding vertical 8.0'),
        ),
        Padding(
          padding: const EdgeInsets.all(48.0),
          child: Text('padding all 48.0'),
        ),
      ],
    );
  }
}
