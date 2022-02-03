import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/app/modules/settings/views/settings_items_view.dart';
import 'package:plantable/app/routes/app_pages.dart';
import 'package:plantable/base/base_widgets.dart/custom_button.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        color: kAppBackgroundColor,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.account_circle_outlined,
                  size: 72.0, color: kPrimaryColor),
            ),
            Text(
              'Edit Picture',
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
                padding: EdgeInsets.all(16.0),
                width: Get.width,
                child: Text(
                  'Account',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.bold),
                )),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  SettingsItemsView(
                    suffexIcon: Icon(
                      Icons.book,
                      size: 30.0,
                      color: Colors.black38,
                    ),
                    title: "Name",
                    endText: "Manikanta",
                    from: 'PROFILES',
                  ),
                  Container(
                    child: Divider(
                      height: 0.05,
                      color: Colors.black,
                    ),
                  ),
                  SettingsItemsView(
                    suffexIcon: Icon(
                      Icons.book,
                      size: 30.0,
                      color: Colors.black38,
                    ),
                    title: "Email",
                    endText: 'manu43236@gmail.com',
                    from: 'PROFILES',
                  ),
                ],
              ),
            ),
            CustomButton(
              callBack: () async {
                Get.offAllNamed(Routes.LOGIN);
              },
              btnText: 'Log out',
              btnColor: kPrimaryColor,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            ),
            Text(
              'Change Password',
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
