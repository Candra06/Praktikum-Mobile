import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  AppConfig({@required this.appName, @required this.initialRoute, @required Widget child}) : super(child: child);

  final String appName;
  final String initialRoute;

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}
