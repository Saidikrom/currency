import 'package:currency/screens/home_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static final Routes _instance = Routes._init();
  static Routes get instance => _instance;
  Routes._init();
  Route? onGenerateRoute(RouteSettings s) {
    switch (s.name) {
      case "/home":
        return MaterialPageRoute(builder: (ctx) =>  HomePage());
    }
    return null;
  }
}
