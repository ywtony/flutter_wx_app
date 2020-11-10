import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///个人中心(我的)
///
class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //列表
        body: Container(
      //布局容器
      color: Color(0xFFFAFAFA),
      //纵向布局
      child: Column(
        children: <Widget>[
          //布局头部
          MineHeaderView(),
          MineItemView('images/icon_pay.png', '支付', 10),
          //收藏、相册、卡包、表情
          MineItemView('images/icon_store.png', '收藏', 10),
          LineView(),
          MineItemView('images/icon_photo.png', '相册', 0),
          LineView(),
          MineItemView('images/icon_card.png', '卡包', 0),
          LineView(),
          MineItemView('images/icon_emejoy.png', '表情', 0),
          //设置
          MineItemView('images/icon_setting.png', '设置', 10),
        ],
      ),
    ));
  }
}

class MineHeaderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 90,
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          //头像+昵称加微信号
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Image.asset(
                    'images/girl2.jpg',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'YW-样',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    '微信号：1234567890',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  )
                ],
              )
            ],
          )
          //二维码+右箭头
          ,
          Row(
            children: <Widget>[
              Image.asset(
                'images/icon_rq.png',
                width: 15,
                height: 15,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Image.asset(
                    'images/toRight.png',
                    width: 15,
                    height: 15,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class MineItemView extends StatelessWidget {
  final String imagePath;
  final String text;
  final double marginTop;

  MineItemView(this.imagePath, this.text, this.marginTop);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      padding: EdgeInsets.only(left: 15, right: 15),
      margin: EdgeInsets.only(top: marginTop),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                //左边图标+文字
                Image.asset(
                  imagePath,
                  width: 20,
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ), //右边箭头
            Image.asset(
              'images/toRight.png',
              width: 15,
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}

//制作一根线
class LineView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(left: 40),
        width: MediaQuery.of(context).size.width - 80,
        height: 1,
        color: Color(0xFFFAFAfa),
      ),
    );
  }
}
