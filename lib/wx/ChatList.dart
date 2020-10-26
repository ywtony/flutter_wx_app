import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///聊天列表
///
class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //列表长度
      itemCount: 4,
      //列表构造器
      itemBuilder: (context, index) {
        return MessageItemView();
      },
    );
  }
}

/// 自定义ItemView
class MessageItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //装饰盒子，下面有一条线
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border(bottom: BorderSide(width: 0.5, color: Color(0xFF6D6d72)))),
      height: 64,
      //列表项点击后的回调函数
      child: FlatButton(
        onPressed: () {},
        //水平布局
        child: Row(
          //垂直方向居中显示
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 64,
              height: 64,
              child: Image.asset(
                'images/girl1.jpg',
                width: 48,
                height: 48,
              ),
            ),
            Expanded(
              //昵称和消息垂直布局
              child: Column(
                //垂直方向居中对齐
                mainAxisAlignment: MainAxisAlignment.center,
                //水平方向靠左对齐
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[Text('昵称'), Text('最后一条消息')],
              ),
            )
            //时间控件靠上对齐
            ,
            Container(
              alignment: AlignmentDirectional.topStart,
              child: Text('刚刚'),
            )
          ],
        ),
      ),
    );
  }
}
