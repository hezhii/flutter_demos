import 'package:flutter/material.dart';

import 'demo1_navigation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        if (settings.name == '/') {
          builder = (BuildContext context) => new ArticleListScreen();
        } else {
          String param = settings.name.split('/')[2];
          builder = (BuildContext context) => new NewArticle(param);
        }

        return new MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
