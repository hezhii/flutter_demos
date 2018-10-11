import 'package:flutter/material.dart';

import 'home.dart';
import 'demos/navigation.dart';
import 'demos/assets.dart';

final routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => new Home(),
  '/navigation': (BuildContext context) => new ArticleListScreen(),
  '/assets': (BuildContext context) => new Assets(),
};
