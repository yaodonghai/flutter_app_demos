import 'package:flutter/material.dart';

import 'EmptyPage.dart';

class  NextPage extends StatelessWidget {

  static const String routeName = "/detail";
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // 当返回为true时,可以自动返回(flutter帮助我们执行返回操作)
      // 当返回为false时, 自行写返回代码
      onWillPop: () {
        _backToHome(context);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("详情页"),
//        leading: IconButton(
//          icon: Icon(Icons.arrow_back),
//          onPressed: () => _backToHome(context),
//        ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("next", style: TextStyle(fontSize: 20),),
              RaisedButton(
                child: Text("下一页"),
                onPressed: () => jumpToEmptyPage(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _backToHome(BuildContext context) {
    Navigator.of(context).pop("a detail message");
  }


  void jumpToEmptyPage(BuildContext context){
    Navigator.of(context).pushNamed(EmptyPage.routeName, arguments: "a home message");
  }
}
