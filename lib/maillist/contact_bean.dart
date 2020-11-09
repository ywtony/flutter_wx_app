import 'package:flutter/cupertino.dart';

///好友Bean
class ContactBean {
  //字母排列
  String seationKey;

  //名称
  String name;

  //头像
  String avatarUrl;

  //构造函数
  ContactBean(this.seationKey, this.name, this.avatarUrl);
}

///好友数据集
List<ContactBean> contactDatas = [
  ContactBean(
    'A',
    '安其拉',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604033597822&di=4239b5ca005508cc386f71aa666899e2&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F439f21ee43e0876d5a78321df69054810d4aa7816a6d-sBJhNm_fw658',
  ),
  ContactBean(
    'A',
    '阿卡丽',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540604543064&di=8aae52b40c5b4f0d2a2265b71ef1ba2c&imgtype=0&src=http%3A%2F%2Fcdnimg103.lizhi.fm%2Faudio_cover%2F2016%2F09%2F29%2F2559592964947348999_320x320.jpg',
  ),
  ContactBean(
    'B',
    '白起',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540604543064&di=8aae52b40c5b4f0d2a2265b71ef1ba2c&imgtype=0&src=http%3A%2F%2Fcdnimg103.lizhi.fm%2Faudio_cover%2F2016%2F09%2F29%2F2559592964947348999_320x320.jpg',
  ),
  ContactBean(
    'C',
    '曹操',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540604543064&di=8aae52b40c5b4f0d2a2265b71ef1ba2c&imgtype=0&src=http%3A%2F%2Fcdnimg103.lizhi.fm%2Faudio_cover%2F2016%2F09%2F29%2F2559592964947348999_320x320.jpg',
  ),
  ContactBean(
    'C',
    '程咬金',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403360209&di=ec25c22642ec5e3858dc70a393ca0697&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20110901%2FImg318072437.jpg',
  ),
  ContactBean(
    'D',
    '达摩',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403360209&di=ec25c22642ec5e3858dc70a393ca0697&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20110901%2FImg318072437.jpg',
  ),
  ContactBean(
    'D',
    '典韦',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403360209&di=ec25c22642ec5e3858dc70a393ca0697&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20110901%2FImg318072437.jpg',
  ),
  ContactBean(
    'E',
    '恶魔小丑 ',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403360209&di=ec25c22642ec5e3858dc70a393ca0697&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20110901%2FImg318072437.jpg',
  ),
  ContactBean(
    'F',
    '飞机',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403409663&di=dedd3829d437cd3dbaf0eff35843aba6&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F0df3d7ca7bcb0a46e22496026063f6246b60af82.jpg',
  ),
  ContactBean(
    'G',
    '宫本武藏',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403409663&di=dedd3829d437cd3dbaf0eff35843aba6&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F0df3d7ca7bcb0a46e22496026063f6246b60af82.jpg',
  ),
  ContactBean(
    'H',
    '韩信',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403409663&di=dedd3829d437cd3dbaf0eff35843aba6&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F0df3d7ca7bcb0a46e22496026063f6246b60af82.jpg',
  ),
  ContactBean('H', '黄忠',
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403568416&di=5ee437e92b9cbc9246035a6353fa8417&imgtype=0&src=http%3A%2F%2Fi6.qhimg.com%2Ft014810bec6c531fc18.jpg'),
  ContactBean('I', '姬如雪', ''),
  ContactBean('J', '姬如雪', ''),
  ContactBean('J', '荆轲', ''),
  ContactBean('K', '姬如雪', ''),
  ContactBean('L', '刘禅', ''),
  ContactBean('L', '.兰陵王', ''),
  ContactBean('L', '李白', ''),
  ContactBean('L', '.吕布', ''),
  ContactBean('L', '露娜', ''),
  ContactBean('L', '辣眼睛', ''),
  ContactBean('M', '墨子', ''),
  ContactBean('N', '哪吒', ''),
  ContactBean('O', 'Master', ''),
  ContactBean('P', '彭于晏', ''),
  ContactBean('P', '彭简', ''),
  ContactBean('Q', '乔大', ''),
  ContactBean('Q', '乔小', ''),
  ContactBean('Q', '邱小玲', ''),
  ContactBean('Q', '齐东宇', ''),
  ContactBean('R', 'rogerMan', ''),
  ContactBean('S', '石头熊', ''),
  ContactBean('S', '孙尚香', ''),
  ContactBean('S', '孙悟dao空', ''),
  ContactBean('T', '天天', ''),
  ContactBean('U', '天天', ''),
  ContactBean('V', '天天', ''),
  ContactBean('W', '薇薇安', ''),
  ContactBean('X', '小猪', ''),
  ContactBean('X', '小猪佩奇', ''),
  ContactBean('X', '茜茜', ''),
  ContactBean('Y', '杨戬', ''),
  ContactBean('Z', '钟无艳', ''),
];
