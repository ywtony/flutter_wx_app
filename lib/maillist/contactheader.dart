import 'package:flutter/cupertino.dart';

import 'contact_item.dart';

///好友列表头部
///
class ContactHader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ContactItem(imageUrl: 'images/girl1.jpg', titleName: '新的朋友'),
        ContactItem(imageUrl: 'images/girl1.jpg', titleName: '仅聊天的朋友'),
        ContactItem(imageUrl: 'images/girl1.jpg', titleName: '群聊'),
        ContactItem(imageUrl: 'images/girl1.jpg', titleName: '标签'),
        ContactItem(imageUrl: 'images/girl1.jpg', titleName: '公众号'),
      ],
    );
  }
}
