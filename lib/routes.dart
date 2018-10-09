import 'package:flutter/material.dart';

import 'home.dart';
import 'demos/navigation.dart';

final routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => new Home(),
  '/navigation': (BuildContext context) => new ArticleListScreen(),
};
