import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {

  static const String routeName = "/emptyPage";

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
          title: Text("空"),
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
                child: Text("上一页"),
                onPressed: () => _backToHome(context),
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

}
