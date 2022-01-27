import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:plantable/app/routes/app_pages.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

import 'controllers/reboot.controller.dart';

class HowToView extends GetView<RebootController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: kAppBackgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 50.0,
              child: Center(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.listItems.length,
                    itemBuilder: (context, index) {
                      return Obx(() => InkWell(
                            onTap: () {
                              controller.increment(index);
                            },
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                      color:
                                          controller.selectedPosition.value ==
                                                  index
                                              ? kPrimaryColor
                                              : Colors.white,
                                      width:
                                          controller.selectedPosition.value ==
                                                  index
                                              ? 1
                                              : 0)),
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16.0),
                              child: Text(controller.listItems[index]),
                            ),
                          ));
                    }),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    crossAxisCount: Get.width > 600.0 ? 4 : 2,
                  ),
                  itemCount: 300,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed(Routes.REBOOT_HOW_TO_ITEM_DETAIL_VIEW);
                      },
                      child: Card(
                        elevation: 10.0,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(5.0)),
                              child: Image.asset(
                                'assets/images/food.jpeg',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(5.0)),
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: Text(
                                          'How-To Approach a Plant-Based Devision Plantable',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0),
                                        ),
                                      ),
                                      Spacer(),
                                      Obx(() => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Text(
                                              controller.listItems[controller
                                                  .selectedPosition.value],
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black26,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14.0),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
