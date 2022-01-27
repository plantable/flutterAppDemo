import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/app/routes/app_pages.dart';
import 'package:plantable/base/constatnts/color_constants.dart';
import 'package:plantable/presentation/recipies/recipies.screen.dart';
import 'package:plantable/presentation/screens.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: FancyBottomNavigation(
          circleColor: kPrimaryColor,
          activeIconColor: Colors.white,
          inactiveIconColor: kPrimaryColor,
          textColor: kPrimaryColor,
          tabs: [
            TabData(iconData: Icons.outdoor_grill, title: "Recipies"),
            TabData(iconData: Icons.bookmark_add_outlined, title: "Tracking"),
            TabData(iconData: Icons.check_circle_outline, title: "Reboot"),
            TabData(iconData: Icons.sms, title: "Coach")
          ],
          onTabChangedListener: (position) {
            controller.currentPage.value = position;
          },
        ),
        body: Obx(() => SafeArea(
              child: Column(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        width: double.infinity,
                        height: 45.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            (controller.currentPage.value == 1 ||
                                    controller.currentPage.value == 0)
                                ? IconButton(
                                    icon: Icon(
                                        controller.currentPage.value == 0
                                            ? Icons.note_add_outlined
                                            : Icons.article_sharp,
                                        size: 28.0,
                                        color: kPrimaryColor),
                                    onPressed: () {
                                      Get.toNamed(Routes.SHOPPING_LIST);
                                    },
                                  )
                                : SizedBox(
                                    width: 28.0,
                                  ),
                            Container(
                              child: Text(
                                controller.getAppbarTitle(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.account_circle_outlined,
                                  size: 28.0, color: kPrimaryColor),
                              onPressed: () {
                                Get.toNamed(Routes.SETTINGS);
                              },
                            ),
                          ],
                        ),
                      ),
                      if (controller.currentPage.value == 0)
                        Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: kAppBackgroundColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(1.0)),
                                border: Border.all(
                                    color: Colors.black26, width: 1.0)),
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 8.0),
                            margin: EdgeInsets.only(
                                left: 8, right: 8, bottom: 15, top: 5),
                            child: Row(
                              children: [
                                Icon(Icons.search),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search by name or ingredients',
                                      isCollapsed: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 5.0),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: getBodyWidget(),
                    ),
                  ),
                ],
              ),
            )));
  }

  Widget getBodyWidget() {
    Widget body = controller.currentPage.value == 1
        ? TrackerScreen()
        : controller.currentPage.value == 2
            ? RebootScreen()
            : controller.currentPage.value == 3
                ? CoachScreen()
                : RecipiesScreen();
    return body;
  }
}
