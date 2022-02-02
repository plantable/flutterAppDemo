import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/base/constatnts/color_constants.dart';
import 'package:plantable/presentation/reboot/howto.screen.dart';
import 'package:plantable/presentation/reboot/journey.screen.dart';

import '../controllers/shopping_list_controller.dart';

class ShoppingListView extends GetView<ShoppingListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              child: TabBar(
                indicatorColor: kPrimaryColor,
                tabs: [
                  Tab(
                    child: Text(
                      'BY AISLE',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'BY RECIPE',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                height: Get.height,
                width: Get.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.black12, shape: BoxShape.circle),
                      padding: EdgeInsets.all(32.0),
                      child: Icon(
                        Icons.note_add,
                        color: Colors.black26,
                        size: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Your list isempty. Add a recipe to get started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: Get.height,
                width: Get.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.black12, shape: BoxShape.circle),
                      padding: EdgeInsets.all(32.0),
                      child: Icon(
                        Icons.note_add,
                        color: Colors.black26,
                        size: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Your list isempty. Add a recipe to get started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
