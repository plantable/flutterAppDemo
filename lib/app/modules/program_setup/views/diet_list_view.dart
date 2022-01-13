import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/app/modules/program_setup/controllers/program_setup_controller.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

class DietListView extends GetView<ProgramSetupController> {
  @override
  Widget build(BuildContext context) {
    return controller.obx((state) => Container(
          child: ListView.builder(
            itemCount: controller.dietList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: Theme(
                    data: ThemeData(
                        splashColor: kTransperentColor,
                        highlightColor: kTransperentColor),
                    child: InkWell(
                      onTap: () {
                        controller.familiarDietPosition = index;
                        controller.update();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 12.0),
                        margin: EdgeInsets.all(5.0),
                        decoration: controller.familiarDietPosition == index
                            ? BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                border: Border.all(
                                    color: kPrimaryColor, width: 0.5))
                            : null,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  // Get.back();
                                },
                                icon: Icon(
                                  Icons.list,
                                  size: 25.0,
                                )),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  controller.dietList[index],
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                            Spacer(),
                            controller.familiarDietPosition != index
                                ? Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                      border: Border.all(
                                        width: 0.5,
                                        color: Colors.blueGrey,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.green[400],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(40),
                                      ),
                                      border: Border.all(
                                        width: 0.5,
                                        color: Colors.blueGrey,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 16.0,
                                    ),
                                  )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
