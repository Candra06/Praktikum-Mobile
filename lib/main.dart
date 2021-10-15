import 'package:belajar_flutter/appConfig.dart';
import 'package:belajar_flutter/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppConfig(appName: 'Belajar Flutter', initialRoute: Routes.PAGE1, child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var initRoute = AppConfig.of(context).initialRoute;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.generateRoute,
      initialRoute: initRoute,
    );
  }
}
