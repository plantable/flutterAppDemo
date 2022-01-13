import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/app/routes/app_pages.dart';
import 'package:plantable/base/base_widgets.dart/base_scaffold.dart';
import 'package:plantable/base/base_widgets.dart/custom_button.dart';
import 'package:plantable/base/constatnts/color_constants.dart';
import 'package:plantable/base/constatnts/constants.dart';
import 'package:plantable/base/languages/text_keys.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_value.dart';

import '../controllers/signin_or_get_started_controller.dart';

class SigninOrGetStartedView extends GetView<SigninOrGetStartedController> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      bgcolor: kWhiteColor,
      child: ResponsiveRowColumn(
        rowMainAxisAlignment: MainAxisAlignment.center,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
              rowFlex: 6,
              columnFlex: 6,
              child: Center(
                child: Image.asset(
                  'assets/images/app_bg.jpg',
                  height: ResponsiveValue(context,
                          defaultValue: 250.0, valueWhen: valuesWhen)
                      .value,
                  width: ResponsiveValue(context,
                          defaultValue: 250.0, valueWhen: valuesWhen)
                      .value,
                ),
              )),
          ResponsiveRowColumnItem(
              rowFlex: 4,
              columnFlex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    kTxtPlantBasedEatingMadeEasy.tr,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    kTxtOnboardCreatAccEat.tr,
                    style: TextStyle(fontSize: 14.0),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomButton(
                    btnText: 'New here? Get started',
                    btnColor: kPrimaryColor,
                    margin: EdgeInsets.all(10.0),
                    callBack: () {
                      print(Get.width);
                      Get.toNamed(Routes.PROGRAM_SETUP);
                    },
                  ),
                  CustomButton(
                    btnText: 'Already a customer? Log in',
                    borderColor: kPrimaryColor,
                    btnTextColor: kPrimaryColor,
                    btnColor: kTransperentColor,
                    margin: EdgeInsets.all(10.0),
                    callBack: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                  )
                ],
              )),
        ],
      ),
    );
  }
}
