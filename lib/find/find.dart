import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///发现页面
///
class FindPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //带滚动条的widget
        body: SingleChildScrollView(
      //设置滚动方向为纵向滚动
      scrollDirection: Axis.vertical,
      //true,滑动到底部
      reverse: false,
      padding: EdgeInsets.all(0),
      //滑动到底部回弹效果
      physics: BouncingScrollPhysics(),
      //子布局
      child: Center(
        child: Column(
          children: <Widget>[
            FindItemView(
                'images/icon_friend_around.png', '朋友圈', 'images/girl1.jpg'),
            LineHeightView(),
            FindItemView(
                'images/icon_video_num.png', '视频号', 'images/girl2.jpg'),
            LineHeightView(),
            FindItemView('images/icon_sao_sao.png', '扫一扫', 'images/girl3.jpg'),
            FindItemView('images/icon_yao_yao.png', '摇一摇', 'images/girl4.jpg'),
            LineHeightView(),
            FindItemView(
                'images/icon_look_look.png', '看一看', 'images/girl5.jpg'),
            FindItemView(
                'images/icon_search_one_search.png', '搜一搜', 'images/girl6.jpg'),
            LineHeightView(),
            FindItemView(
                'images/icon_near_man.png', '附近的人', 'images/girl7.jpg'),
            LineHeightView(),
            FindItemView('images/icon_buy_goods.png', '购物', 'images/girl8.jpg'),
            FindItemView('images/icon_game.png', '游戏', 'images/girl9.jpg'),
            LineHeightView(),
            FindItemView(
                'images/icon_little_app.png', '小程序', 'images/girl10.jpg')
          ],
        ),
      ),
    ));
  }
}

class FindItemView extends StatelessWidget {
  final String leftIcon;
  final String leftText;
  final String rightIcon;

  FindItemView(this.leftIcon, this.leftText, this.rightIcon);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        color: Colors.white,
        height: 55,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                //左边图标
                Image.asset(
                  leftIcon,
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  //左边文字
                  child: Text(
                    leftText,
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  rightIcon,
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
                //向右图标
                Image.asset(
                  'images/toRight.png',
                  width: 18,
                  height: 18,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ],
        ));
  }
}

///线
class LineHeightView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfffafafa),
      height: 10,
      width: MediaQuery.of(context).size.width,
    );
  }
}
