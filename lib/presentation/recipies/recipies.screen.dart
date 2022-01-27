import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/app/routes/app_pages.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

import 'controllers/recipies.controller.dart';

class RecipiesScreen extends GetView<RecipiesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      body: Container(
        height: Get.height,
        width: Get.width,
        child: ListView.separated(
          itemCount: controller.items.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(controller.items[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0)),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: childrens(),
                        ),
                      )
                    ]));
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10.0,
            );
          },
        ),
      ),
    );
  }

  List<Widget> childrens() {
    List<Widget> itemss = [];
    for (var i = 0; i < 10; i++) {
      itemss.add(InkWell(
        onTap: () {
          Get.toNamed(Routes.RECIPIES_ITEM_DETAIL);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Card(
            elevation: 5.0,
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Container(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/food.jpeg',
                      fit: BoxFit.contain,
                      width: 270.0,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(8.0),
                      width: 250.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Acai Bowl',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Text('By Plantable',
                                    style: TextStyle(
                                        color: Colors.black26,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.0)),
                                Spacer(),
                                Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.black26,
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ));
    }
    return itemss;
  }
}
