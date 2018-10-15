import 'package:flutter/material.dart';

class RowColumn extends StatefulWidget {
  @override
  _RowColumnState createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  bool isRow = true;
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start;
  MainAxisSize mainAxisSize = MainAxisSize.min;

  onLayoutChange(bool v) {
    setState(() {
      isRow = v;
    });
  }

  onMainAxisAlignmentChange(MainAxisAlignment v) {
    setState(() {
      mainAxisAlignment = v;
    });
  }

  onCrossAxisAlignmentChange(CrossAxisAlignment v) {
    setState(() {
      crossAxisAlignment = v;
    });
  }

  onMainAxisSizeChange(MainAxisSize v) {
    setState(() {
      mainAxisSize = v;
    });
  }

  Widget buildContent() {
    if (isRow) {
      return Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: [
          Icon(Icons.stars, size: 50.0),
          Icon(Icons.stars, size: 100.0),
          Icon(Icons.stars, size: 50.0),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: [
          Icon(Icons.stars, size: 50.0),
          Icon(Icons.stars, size: 100.0),
          Icon(Icons.stars, size: 50.0),
        ],
      );
    }
  }

  Widget buildSelector() {
    return Column(
      children: <Widget>[
        Text(
          'Layout',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio<bool>(
              value: true,
              groupValue: isRow,
              onChanged: onLayoutChange,
            ),
            Text('Row'),
            Radio<bool>(
              value: false,
              groupValue: isRow,
              onChanged: onLayoutChange,
            ),
            Text('Column'),
          ],
        ),
        Text(
          'MainAxisSize',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio<MainAxisSize>(
              value: MainAxisSize.min,
              groupValue: mainAxisSize,
              onChanged: onMainAxisSizeChange,
            ),
            Text('min'),
            Radio<MainAxisSize>(
              value: MainAxisSize.max,
              groupValue: mainAxisSize,
              onChanged: onMainAxisSizeChange,
            ),
            Text('max'),
          ],
        ),
        Text(
          'CrossAxisAlignment',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio<CrossAxisAlignment>(
              value: CrossAxisAlignment.start,
              groupValue: crossAxisAlignment,
              onChanged: onCrossAxisAlignmentChange,
            ),
            Text('start'),
            Radio<CrossAxisAlignment>(
              value: CrossAxisAlignment.end,
              groupValue: crossAxisAlignment,
              onChanged: onCrossAxisAlignmentChange,
            ),
            Text('end'),
            Radio<CrossAxisAlignment>(
              value: CrossAxisAlignment.center,
              groupValue: crossAxisAlignment,
              onChanged: onCrossAxisAlignmentChange,
            ),
            Text('center'),
            Radio<CrossAxisAlignment>(
              value: CrossAxisAlignment.stretch,
              groupValue: crossAxisAlignment,
              onChanged: onCrossAxisAlignmentChange,
            )
          ],
        ),
        Text(
          'MainAxisSize',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio<MainAxisAlignment>(
              value: MainAxisAlignment.start,
              groupValue: mainAxisAlignment,
              onChanged: onMainAxisAlignmentChange,
            ),
            Text('start'),
            Radio<MainAxisAlignment>(
              value: MainAxisAlignment.center,
              groupValue: mainAxisAlignment,
              onChanged: onMainAxisAlignmentChange,
            ),
            Text('center'),
            Radio<MainAxisAlignment>(
              value: MainAxisAlignment.end,
              groupValue: mainAxisAlignment,
              onChanged: onMainAxisAlignmentChange,
            ),
            Text('end'),
            Radio<MainAxisAlignment>(
              value: MainAxisAlignment.spaceEvenly,
              groupValue: mainAxisAlignment,
              onChanged: onMainAxisAlignmentChange,
            ),
            Text('spaceEvenly'),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildSelector(),
        Container(
          color: Colors.yellow,
          child: buildContent(),
        ),
      ],
    );
  }
}
