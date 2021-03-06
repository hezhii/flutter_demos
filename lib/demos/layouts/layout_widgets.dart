import 'package:flutter/material.dart';

import 'container.dart';
import 'padding_demo.dart';
import 'row_column.dart';
import 'expanded_demo.dart';
import 'page_view_demo.dart';

class LayoutWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: demos.length,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Layout Widgets'),
          bottom: new TabBar(
            isScrollable: true,
            tabs: demos.map((LayoutWidgetDemo demo) {
              return new Tab(
                text: demo.name,
              );
            }).toList(),
          ),
        ),
        body: new TabBarView(
          children: demos.map((demo) {
            return demo.widget;
          }).toList(),
        ),
      ),
    );
  }
}

class LayoutWidgetDemo {
  final String name;
  final Widget widget;

  const LayoutWidgetDemo({this.name, this.widget});
}

List<LayoutWidgetDemo> demos = <LayoutWidgetDemo>[
  new LayoutWidgetDemo(name: 'Container', widget: new ContainerDemo()),
  new LayoutWidgetDemo(name: 'Padding', widget: new PaddingDemo()),
  new LayoutWidgetDemo(name: 'Row/Column', widget: new RowColumn()),
  new LayoutWidgetDemo(name: 'Expanded', widget: new ExpandedDemo()),
  new LayoutWidgetDemo(name: 'PageView', widget: new PageViewDemo()),
];
