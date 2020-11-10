import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wx/colors.dart';
import 'package:flutter_wx/wx/ChatList.dart';

import 'find/find.dart';
import 'maillist/Contacts.dart';
import 'mine/mine.dart';

///程序入口页
///tab脚手架
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '放微信四大主页',
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      home: BottomNavigationTab(),
    );
  }
}

class BottomNavigationTab extends StatefulWidget {
  @override
  _BottomNavigationTab createState() => _BottomNavigationTab();
}

class _BottomNavigationTab extends State<BottomNavigationTab> {
  //当前选中项的索引
  int _selectedIndex = 0;
  final tabViews = [ChatList(), ContactView(), FindPage(), MinePage()];

  _popupMenuItem(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
        child: Row(
      children: <Widget>[
        //判断是使用图片路径还是图标
        imagePath != null
            ? Image.asset(
                imagePath,
                width: 32.0,
                height: 32.0,
              )
            : SizedBox(
                width: 32.0,
                height: 32.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
        //显示菜单项文本内容
        Container(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              //跳转到搜索页面
              Navigator.pushNamed(context, 'search');
            },
            child: Image.asset(
              'images/icon_search_white.png',
              width: 20,
              height: 20,
            ),
          ),
          Padding(
            //左右内边距
            padding: const EdgeInsets.only(left: 30, right: 20),
            child: GestureDetector(
              onTap: () {
                //弹出菜单
                showMenu(
                    context: context,
                    //定位
                    position: RelativeRect.fromLTRB(500, 76, 10, 0),
                    //展示所有菜单选项
                    items: <PopupMenuEntry>[
                      _popupMenuItem('发起会话',
                          imagePath: 'images/icon_search.png'),
                      _popupMenuItem('添加好友',
                          imagePath: 'images/icon_search.png'),
                      _popupMenuItem('联系客服',
                          imagePath: 'images/icon_search.png'),
                    ]);
              },
              child: Image.asset(
                'images/icon_more_white.png',
                width: 20,
                height: 20,
              ),
            ),
          ),
        ],
      ),
      body: tabViews[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          //底部导航
          BottomNavigationBarItem(
              label: '聊天',
              icon: _selectedIndex == 0
                  ? Image.asset(
                      'images/icon_wx_green.png',
                      width: 32,
                      height: 28,
                    )
                  : Image.asset(
                      'images/icon_wx_gray.png',
                      width: 32,
                      height: 28,
                    )),
          BottomNavigationBarItem(
              label: '通讯录',
              icon: _selectedIndex == 1
                  ? Image.asset(
                      'images/icon_maillist_green.png',
                      width: 32,
                      height: 28,
                    )
                  : Image.asset(
                      'images/icon_maillist_gray.png',
                      width: 32,
                      height: 28,
                    )),
          BottomNavigationBarItem(
              label: '发现',
              icon: _selectedIndex == 2
                  ? Image.asset(
                      'images/icon_find_green.png',
                      width: 32,
                      height: 28,
                    )
                  : Image.asset(
                      'images/icon_find_gray.png',
                      width: 32,
                      height: 28,
                    )),
          BottomNavigationBarItem(
              label: '我的',
              icon: _selectedIndex == 3
                  ? Image.asset(
                      'images/icon_mine_green.png',
                      width: 32,
                      height: 28,
                    )
                  : Image.asset(
                      'images/icon_mine_gray.png',
                      width: 32,
                      height: 28,
                    )),
        ],
        //当前选中索引
        currentIndex: _selectedIndex,
        //选中项的颜色
        // fixedColor: Colors.green,
        selectedLabelStyle: TextStyle(color: Colors.green),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        // selectedItemColor: Colors.green,
        // unselectedItemColor: Colors.black,
        //处理选中和未选中时的字体大小
        selectedFontSize: 14,
        unselectedFontSize: 14,
        //超过三个后字体不显示的解决方案(这个属性非常的重要,这个属性要是不设置，tab超过三个后好多属性都不起作用了)
        type: BottomNavigationBarType.fixed,
        //tab按下处理
        onTap: onItemSelected,
      ),
    );
  }

  onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
