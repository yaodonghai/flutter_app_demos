import 'package:flutter/material.dart';
import 'mainPage/MainHomePage.dart';
import 'router/Router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      routes: YDRouter.routes,
      initialRoute: YDRouter.initialRoute,
      onGenerateRoute: YDRouter.generateRoute,
      onUnknownRoute: YDRouter.unknownRoute,
    );
  }
}