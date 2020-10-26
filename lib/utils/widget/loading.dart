import 'package:flutter/cupertino.dart';

///定义加载页面
///这个页面暂时还不晓得咋用
class LoadingPage extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    //在加载页面停顿3秒
    Future.delayed(Duration(seconds: 3), () {
      print('Flutter 即时通讯页面实现');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          //加载页面居中背景图，使用cover模式
          Image.asset(
            'images/girl1.jpg',
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
