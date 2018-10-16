import 'package:flutter/material.dart';

class PageViewDemo extends StatelessWidget {
  Widget _buildPage({int index, Color color}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: AlignmentDirectional.center,
        color: color,
        child: Text(
          '$index',
          style: TextStyle(fontSize: 132.0, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 120.0,
      ),
      child: PageView(
        controller: PageController(
          viewportFraction: 0.9,
        ),
        children: [
          _buildPage(index: 1, color: Colors.green),
          _buildPage(index: 2, color: Colors.blue),
          _buildPage(index: 3, color: Colors.indigo),
          _buildPage(index: 4, color: Colors.red),
        ],
      ),
    );
  }
}
