import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SettingsItemsView extends GetView {

  VoidCallback callBack;
  String subtitle;
  Icon suffexIcon;
  String title;
  String prefixTitle;
  String from;

  SettingsItemsView(this.callBack, this.title, this.subtitle, this.suffexIcon,
      this.prefixTitle,this.from);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.height,
      child: Row(children: [

      ],)
      // Text(
      //   'SettingsItemsView is working',
      //   style: TextStyle(fontSize: 20),
      // ),
    );
  }
}
