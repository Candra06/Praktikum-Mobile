import 'package:belajar_flutter/page1.dart';
import 'package:belajar_flutter/page2.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String PAGE1 = '/page1';
  static const String PAGE2 = '/page2';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PAGE1:
        return MaterialPageRoute(builder: (_) => Page1());
      case PAGE2:
        Map<String, dynamic> data = settings.arguments;
        print(data);
        return MaterialPageRoute(
            builder: (_) => Page2(
                  asal: data['asal'],
                  ke: data['ke'],
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('Page ${settings.name} not Defined'),
                  ),
                ));
    }
  }
}
