import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wx/colors.dart';

///聊天列表
///
class ChatList extends StatelessWidget {
  final List<Message> messages = <Message>[
    Message('images/girl1.jpg', '胡列娜', '唐银，不要丢下我，带我走。', '刚刚'),
    Message('images/girl2.jpg', '小舞', '三哥，你好帅啊', '10分钟前'),
    Message('images/girl3.jpg', '女娲', '当历史只剩罪恶，只有倒推重来', '两小时前'),
    Message('images/girl4.jpg', '李白', '将进酒杯莫停', '1天前'),
    Message('images/girl5.jpg', '亚瑟', '亡灵们执行我的意志', '三天前'),
    Message('images/girl6.jpg', '钟馗', '垃圾就应该呆在垃圾桶里', '2020-10-12 10:57'),
    Message('images/girl7.jpg', '阿狸', '阿狸一直爱着主人', '2020-10-12 10:57'),
    Message('images/girl8.jpg', '百里守约', '给我一颗子弹，还你一片寂静', '2020-10-12 10:57'),
    Message('images/girl9.jpg', '提莫', '我去前面探探路', '2020-10-12 10:57'),
    Message('images/girl10.jpg', '盖伦', '人在塔在', '2020-10-12 10:57'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 20),
      //列表长度
      itemCount: messages.length,
      //列表构造器
      itemBuilder: (context, index) {
        return MessageItemView(messages[index]);
      },
    );
  }
}

///消息实体
class Message {
  ///图片路径
  final String imagePath;

  ///用户昵称
  final String nickName;

  ///最后一条消息
  final String lastMessage;

  ///创建日期
  final String createDate;

  Message(this.imagePath, this.nickName, this.lastMessage, this.createDate);
}

/// 自定义ItemView
class MessageItemView extends StatelessWidget {
  final Message message;

  MessageItemView(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
        //装饰盒子，下面有一条线
        // decoration: BoxDecoration(
        //     color: Colors.white,
        //     border: Border(
        //         bottom: BorderSide(width: 0.15, color: Color(0xFF6D6d72)))),
        height: 80,
        //列表项点击后的回调函数
        child: Column(
          children: [
            FlatButton(
              onPressed: () {},
              //水平布局
              child: Row(
                //垂直方向居中显示
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 64,
                    height: 64,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                          //圆角弧度
                          Radius.circular(5)),
                      child: SizedBox(
                        width: 48,
                        height: 48,
                        child: Image.asset(
                          message.imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    //昵称和消息垂直布局
                    child: Column(
                      //垂直方向居中对齐
                      // mainAxisAlignment: MainAxisAlignment.center,
                      //水平方向靠左对齐
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            message.nickName,
                            style: TextStyle(
                                color: Color(color_333333), fontSize: 15),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              message.lastMessage,
                              style: TextStyle(
                                  color: Color(color_666666), fontSize: 13),
                            ))
                      ],
                    ),
                  )
                  //时间控件靠上对齐
                  ,
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    height: 48,
                    child: Text(
                      message.createDate,
                      style: TextStyle(color: Color(color_999999), fontSize: 9),
                    ),
                  )
                ],
              ),
            ),
            //底部线
            Container(
              margin: EdgeInsets.only(left: 20, top: 10, right: 10),
              width: 1000,
              height: 0.2,
              color: Colors.grey,
            )
          ],
        ));
  }
}
