import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/app/modules/settings/views/settings_items_view.dart';
import 'package:plantable/app/routes/app_pages.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              _profileItem(),
              SizedBox(
                height: 20.0,
              ),
              _programItem(),
              SizedBox(
                height: 20.0,
              ),
              _preferancesandNotificationItem(),
              SizedBox(
                height: 20.0,
              ),
              _helpFeedbackAndAbout(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileItem() {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.PROFILE);
      },
      child: SettingsItemsView(
        suffexIcon: Icon(
          Icons.account_circle_outlined,
          size: 60.0,
          color: kPrimaryColor,
        ),
        title: "Demo Account",
        subtitle: 'Free Account',
        from: 'PROFILE',
      ),
    );
  }

  Widget _programItem() {
    return Column(
      children: [
        SettingsItemsView(
          suffexIcon: Icon(
            Icons.book,
            size: 30.0,
            color: Colors.black38,
          ),
          title: "Program",
          from: 'PROGRAM',
          endText: "Reboot",
        ),
        Container(
          margin: EdgeInsets.only(left: 50.0),
          child: Divider(
            height: 0.05,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  _preferancesandNotificationItem() {
    return Column(
      children: [
        SettingsItemsView(
          suffexIcon: Icon(
            Icons.book,
            size: 30.0,
            color: Colors.black38,
          ),
          title: "Unit Preferances",
          endText: "Imperial",
        ),
        Container(
          margin: EdgeInsets.only(left: 50.0),
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
          title: "Notificatios",
        ),
        Container(
          margin: EdgeInsets.only(left: 50.0),
          child: Divider(
            height: 0.05,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  _helpFeedbackAndAbout() {
    return Column(
      children: [
        SettingsItemsView(
          suffexIcon: Icon(
            Icons.book,
            size: 30.0,
            color: Colors.black38,
          ),
          title: "Help Center",
        ),
        Container(
          margin: EdgeInsets.only(left: 50.0),
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
          title: "Feedback",
        ),
        Container(
          margin: EdgeInsets.only(left: 50.0),
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
          title: "About",
        ),
        Container(
          margin: EdgeInsets.only(left: 50.0),
          child: Divider(
            height: 0.05,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
