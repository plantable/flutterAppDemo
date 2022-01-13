import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

class CustomAppBar extends StatelessWidget {
  var backButton;

  var bgColor;

  var closeIcon;

  var title;

  CustomAppBar(
      {this.backButton,
      this.bgColor = kAppBackgroundColor,
      this.closeIcon,
      this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: bgColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          backButton,
          title,
          Spacer(),
          closeIcon,
        ],
      ),
    );
  }
}
