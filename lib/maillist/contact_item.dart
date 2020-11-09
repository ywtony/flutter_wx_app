import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wx/colors.dart';
import 'package:flutter_wx/maillist/contact_bean.dart';

///好友列表项
class ContactItem extends StatelessWidget {
  //好友数据
  final ContactBean item;

  //标题
  final String titleName;

  //图片路径
  final String imageUrl;

  //默认头像
  String defaultHeadUrl =
      'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=123054103,1044967988&fm=26&gp=0.jpg';

  ContactItem({this.item, this.titleName, this.imageUrl});
  //渲染好友列表项
  @override
  Widget build(BuildContext context) {
    //列表容器
    return Container(
      //装饰盒子，列表项底部加一条线
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(width: 0.2, color: Color(color_666666)))),
      height: 52,
      child: FlatButton(
        //列表点击事件
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //展示头像或者图片
            imageUrl == null
                ? Image.network(
                    item.avatarUrl != '' ? item.avatarUrl : defaultHeadUrl,
                    width: 36,
                    height: 36,
                    scale: 0.9,
                  )
                : Image.asset(
                    imageUrl,
                    width: 36,
                    height: 36,
                  )
            //展示名称或标题
            ,
            Container(
              margin: const EdgeInsets.only(left: 12),
              child: Text(
                titleName == null ? item.name ?? '暂时' : titleName,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(color_666666),
                ),
                //最多只显示一行
                maxLines: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
