import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wx/maillist/contact_bean.dart';

///好友列表list
///Widget大部分都是从构造函数传参，自定义的Widget也不例外。另外Widget在Flutter中的地位相当于配置文件，其真正的View是与Widget对应的RenderObject。
///但是并不是所有的Widget都有RenderObject，例如StatelessWidget和StatefulWidget就没有RenderObject
class ContactSlideList extends StatefulWidget {
  //好友列表项数据
  List<ContactBean> items;

  //好友列表头构造器
  final IndexedWidgetBuilder headerBuilder;

  //好友列表项构造器
  final IndexedWidgetBuilder itemBuilder;

  //字母构造器
  final IndexedWidgetBuilder sectionBuilder;

  ContactSlideList(
      {Key key,
      this.items,
      this.headerBuilder,
      this.itemBuilder,
      this.sectionBuilder});

  @override
  ContactState createState() => ContactState();
}

class ContactState extends State<ContactSlideList> {
  //列表滚动控制器
  final ScrollController _scrollController = ScrollController();

  bool _onNotification(ScrollNotification notification) {
    return true;
  }

  //判断头部视图或空容器
  _isShowHeaderView(index) {
    if (index == 0 && widget.headerBuilder != null) {
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context, index),
      );
    }
    return Container();
  }

  //根据定位判断是否显示好友列表头
  bool _shouldShowHeader(int position) {
    if (position <= 0) {
      return false;
    }
    if (position != 0 &&
        widget.items[position].seationKey !=
            widget.items[position - 1].seationKey) {
      return false;
    }
    return true;
  }

  //渲染列表
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //列表加载更多
      body: Stack(
        children: <Widget>[
          NotificationListener(
            onNotification: _onNotification,
            child: ListView.builder(
              //滚动控制器
              controller: _scrollController,
              //list内容不足一屏时，list都可以滚动
              physics: const AlwaysScrollableScrollPhysics(),
              //列表长度
              itemCount: widget.items.length,
              //列表项构造器
              itemBuilder: (BuildContext context, int index) {
                //列表容器
                return Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      //显示列表头
                      _isShowHeaderView(index),
                      //用Offstage组件控制是否显示英文字母
                      Offstage(
                        offstage: _shouldShowHeader(index),
                        child: widget.sectionBuilder(context, index),
                      ),
                      //显示列表项
                      Column(
                        children: <Widget>[widget.itemBuilder(context, index)],
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
