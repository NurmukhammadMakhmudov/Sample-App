
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/card2.dart';
import 'constant/route.dart';
import 'welcome.dart';

import 'components/card1.dart';
import 'components/card3.dart';
import 'home.dart';
class Routerr {
  Route createRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionDuration: Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = 0.0;
        var end = 1.0;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve));

        return FadeTransition(
          opacity: animation.drive(tween),
          child: child,
        );
      },
    );
  }

//ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case card1:
        return MaterialPageRoute(builder: (context) => Card1());
        break;
      case home:
        return MaterialPageRoute(builder: (context) => Home());
        break;
      case card2:
        return MaterialPageRoute(builder: (context) => Card2());
        break;
      case card3:
        return MaterialPageRoute(builder: (context) => Card3());
        break;
      case welcome:
        return MaterialPageRoute(builder: (context) => Welcome());
    }
  }
}