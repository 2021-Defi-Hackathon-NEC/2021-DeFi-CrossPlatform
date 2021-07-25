import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/screens.dart';

class Router {
  static String initialRoute = 'before_main';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
     // case 'before_main':
        //return MaterialPageRoute(builder: (_) => Before_Main());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
