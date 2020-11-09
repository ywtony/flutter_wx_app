import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///个人中心(我的)
///
class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //列表
      body: ListView(
        children: <Widget>[
          //头部实现
          Container(
            //上间距20
            margin: EdgeInsets.only(top: 20),
            //头部背景颜色为白色
            color: Colors.white,
            height: 80,
          )
        ],
      ),
    );
  }
}
