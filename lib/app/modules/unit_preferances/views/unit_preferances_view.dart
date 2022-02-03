import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

import '../controllers/unit_preferances_controller.dart';

class UnitPreferancesView extends GetView<UnitPreferancesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Preferances'),
      ),
      body: controller.obx((state) => Container(
            child: ListView.builder(
              itemCount: controller.countryList.length,
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
                          controller.agePosition = index;
                          controller.update();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 12.0),
                          margin: EdgeInsets.all(5.0),
                          decoration: controller.agePosition == index
                              ? BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  border: Border.all(
                                      color: kPrimaryColor, width: 0.5))
                              : null,
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.countryList[index],
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.start,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          'lb, in, fl, oz',
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              controller.agePosition != index
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
          )),
    );
  }
}
