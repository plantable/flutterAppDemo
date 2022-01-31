import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SettingsItemsView extends GetView {
  var callBack;
  var subtitle;
  var suffexIcon;
  var title;
  var prefixTitle;
  var from;

  var endText;

  SettingsItemsView(
      {this.callBack,
      this.title = "",
      this.subtitle = "",
      this.suffexIcon,
      this.prefixTitle,
      this.endText = "",
      this.from});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        width: Get.height,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (from == "PROFILE" || from == "PROGRAM") suffexIcon,
            if (from == "PROFILE" || from == "PROGRAM")
              SizedBox(
                width: 20.0,
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                if (subtitle != "")
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                endText,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // Text('Free Account'),
            Icon(
              Icons.arrow_forward_ios,
              size: 18.0,
              color: Colors.black45,
            )
          ],
        )
        // Text(
        //   'SettingsItemsView is working',
        //   style: TextStyle(fontSize: 20),
        // ),
        );
  }
}
