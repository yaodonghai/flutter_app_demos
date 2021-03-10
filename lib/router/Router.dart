
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_demos/mainPage/MainHomePage.dart';
import 'package:flutter_app_demos/pages/EmptyPage.dart';
import 'package:flutter_app_demos/pages/NextPage.dart';

class YDRouter{

static final Map<String,WidgetBuilder>  routes = {
  MainHomePageFulWidget.routeName :(ctx)=>MainHomePageFulWidget(),
  NextPage.routeName  : (ctx)=>NextPage(),
  EmptyPage.routeName  : (ctx)=>EmptyPage(),
};

static final String initialRoute = MainHomePageFulWidget.routeName;

static final RouteFactory generateRoute = (settings) {
  if (settings.name == MainHomePageFulWidget.routeName) {
    return MaterialPageRoute(
        builder: (ctx) {
          return MainHomePageFulWidget();
        }
    );
  }
  return null;
};

static final RouteFactory unknownRoute = (settings) {
  return MaterialPageRoute(
      builder: (ctx) {
        return NextPage();
      }
  );
};
}
