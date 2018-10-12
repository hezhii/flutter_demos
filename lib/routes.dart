import 'package:flutter/material.dart';

import 'home.dart';
import 'demos/navigation.dart';
import 'demos/assets.dart';
import 'demos/layouts.dart';

final List<Map> routeConfig = [
  {
    'name': 'Home',
    'path': '/',
    'builder': (BuildContext context) => new Home()
  },
  {
    'name': 'Navigation',
    'path': '/navigation',
    'builder': (BuildContext context) => new ArticleListScreen()
  },
  {
    'name': 'Assets',
    'path': '/assets',
    'builder': (BuildContext context) => new Assets()
  },
  {
    'name': 'Layouts',
    'path': '/layouts',
    'builder': (BuildContext context) => new Layouts()
  }
];

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    Map<String, WidgetBuilder> map = {};

    routeConfig.forEach((route) {
      map[route['path']] = route['builder'];
    });
    return map;
  }

  static Iterable<Map> getDemos() {
    return routeConfig.where((route) => route['name'] != 'Home');
  }
}
