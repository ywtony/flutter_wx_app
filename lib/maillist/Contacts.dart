import 'package:flutter/material.dart';
import 'package:flutter_wx/colors.dart';
import 'package:flutter_wx/maillist/contact_item.dart';
import 'package:flutter_wx/maillist/contact_slide_list.dart';
import 'package:flutter_wx/maillist/contactheader.dart';

import 'contact_bean.dart';
import 'package:flutter_wx/colors.dart';

///联系人
class ContactView extends StatefulWidget {
  @override
  _ContactView createState() => _ContactView();
}

class _ContactView extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //联系人列表主体实现
      body: ContactSlideList(
        //好友列表数据
        items: contactDatas,
        //好友列表头构造器
        headerBuilder: (BuildContext context, int index) {
          return Container(
            //好友列表头
            child: ContactHader(),
          );
        },
        //好友列表项构造器
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(
              item: contactDatas[index],
            ),
          );
        },
        //字母构造器
        sectionBuilder: (BuildContext context, int index) {
          return Container(
            height: 32,
            padding: EdgeInsets.only(left: 14),
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            //显示字母
            child: Text(
              contactDatas[index].seationKey,
              style: TextStyle(fontSize: 14, color: Color(color_999999)),
            ),
          );
        },
      ),
    );
  }
}
