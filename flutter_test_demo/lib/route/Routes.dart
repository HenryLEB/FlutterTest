import 'package:flutter_test_demo/route/RouterTestRoute.dart';

import '../main.dart';
import 'NewRoute.dart';

final myRoutes = {
  "/newRoute": (context) => NewRoute(),
  "/": (context) => MyHomePage(title: "Flutter Demo Home Page"),
  "/RouterTestRoute": (context) => RouterTestRouter()
};