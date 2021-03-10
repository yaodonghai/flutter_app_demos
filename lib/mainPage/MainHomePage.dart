import 'package:flutter/material.dart';
import 'package:flutter_app_demos/pages/HomePage.dart';
import 'package:flutter_app_demos/pages/ListPage.dart';
import 'package:flutter_app_demos/pages/SettingPage.dart';

class MainHomePageFulWidget extends StatefulWidget {
  @override
  _MainHomePageFulWidgetState createState() => _MainHomePageFulWidgetState();
}

class _MainHomePageFulWidgetState extends State<MainHomePageFulWidget> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[

    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'TabBar'
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.business),
        label: 'list'
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'settings'
    ),
  ];


  final _pages = [HomePageContent(), ListPageContent(), SettingPageContent()];

  void _onItemTapped(int index) {
    print("_onItemTapped");
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
      items: items,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
