import 'package:flutter/material.dart';
import 'package:fooderlich/welcome.dart';
import 'constant/route.dart';
import 'router.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      initialRoute: welcome,
      onGenerateRoute: Routerr.generateRoute,
    );
  }
}
