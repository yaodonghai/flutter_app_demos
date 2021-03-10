
import 'package:flutter/material.dart';

import 'EmptyPage.dart';
import 'NextPage.dart';

class ListPageContent extends StatefulWidget {

  @override
  _ListPageContentState createState() => _ListPageContentState();
}

class _ListPageContentState extends State<ListPageContent> {

  String title;

  final List<String> entries = <String>['跳转', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("list")
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return FlatButton(
            child: Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text(entries[index])),
            ),
            onPressed: () {
              jumptoPage(context,index);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }

  void jumptoPage(BuildContext context,int index) {
    print("index---$index");
    switch (index) {
      case 0:
        {
          jumpToNextPage(context);
        }
        break;
      case 1:
        {
          jumpToNextPage(context);
        }
        break;
      default:
        {}
        break;
    }
  }

  void jumpToNextPage(BuildContext context){
    Navigator.of(context).pushNamed(NextPage.routeName, arguments: "a home message");
  }

  void jumpToEmptyPage(BuildContext context){
    Navigator.of(context).pushNamed(EmptyPage.routeName, arguments: "a home message");
  }
}

