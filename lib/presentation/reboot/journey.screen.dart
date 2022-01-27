import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:plantable/app/routes/app_pages.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

import 'controllers/reboot.controller.dart';

class JourneyView extends GetView<RebootController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kAppBackgroundColor,
      height: Get.height,
      child: ListView.builder(itemBuilder: (context, index) {
        return Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                  child: Row(
                    children: [
                      (index > 1)
                          ? Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: kLockBg,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 2, color: Colors.white)),
                              child: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                            )
                          : Icon(Icons.check_circle,
                              size: 52.0, color: kPrimaryColor),
                      InkWell(
                        onTap: () {
                          if (index <= 1) {
                            Get.toNamed(Routes.REBOOT_JOURNEY_ITEM_DETAIL_VIEW);
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'WELCOME',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Getting Ready',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      color: Colors.black)),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('All about your reboot!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                      color: Colors.black)),
                              SizedBox(
                                height: 5.0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                if (index > 1)
                  Container(
                    width: double.infinity,
                    height: 100.0,
                    color: kAppBackgroundColor.withOpacity(0.5),
                  )
              ],
            ),
            Divider(
              height: 1.0,
              color: Colors.black.withOpacity(0.1),
            )
          ],
        );
      }),
    );
  }

  List<Widget> getListOfWidgets() {
    List<Widget> items = [];
    return items;
  }
}
