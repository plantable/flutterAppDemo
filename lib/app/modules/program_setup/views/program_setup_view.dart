// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/app/modules/program_setup/views/age_list_view.dart';
import 'package:plantable/app/modules/program_setup/views/country_list_view.dart';
import 'package:plantable/app/modules/program_setup/views/diet_list_view.dart';
import 'package:plantable/app/modules/program_setup/views/gender_list_view.dart';
import 'package:plantable/app/modules/program_setup/views/your_wish_list_view.dart';
import 'package:plantable/app/routes/app_pages.dart';
import 'package:plantable/base/base_widgets.dart/base_scaffold.dart';
import 'package:plantable/base/base_widgets.dart/custom_app_bar.dart';
import 'package:plantable/base/base_widgets.dart/custom_button.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

import '../controllers/program_setup_controller.dart';

class ProgramSetupView extends GetView<ProgramSetupController> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: controller.obx((state) => Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(flex: 6, child: _getHeader()),
                Expanded(
                    flex: 18,
                    child: Container(
                        child: controller.programSetupSteps ==
                                ProgramSetupSteps.WISH_LIST
                            ? YourWishListView()
                            : controller.programSetupSteps ==
                                    ProgramSetupSteps.AGE
                                ? AgeListView()
                                : controller.programSetupSteps ==
                                        ProgramSetupSteps.GENDER
                                    ? GenderListView()
                                    : controller.programSetupSteps ==
                                            ProgramSetupSteps.DIET
                                        ? DietListView()
                                        : CountryListView())),
                Expanded(flex: 7, child: _getFooter())
              ],
            ),
          )),
    );
  }

  _getAppBar() => Theme(
        data: ThemeData(
            highlightColor: kTransperentColor, splashColor: kTransperentColor),
        child: CustomAppBar(
          backButton: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: IconButton(
                onPressed: () {
                  _bachClickHandler();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 25.0,
                )),
          ),
          closeIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
                onPressed: () {
                  // Get.back();
                  Get.defaultDialog(
                    titlePadding: EdgeInsets.only(
                        top: 32.0, bottom: 8.0, left: 10.0, right: 10.0),
                    title: 'Are you sure want to exit the assessment?',
                    titleStyle:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    content: Container(
                      child: Column(
                        children: [
                          CustomButton(
                            callBack: () {
                              Get.offAllNamed(Routes.SIGNIN_OR_GET_STARTED);
                            },
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                            btnColor: kPrimaryColor,
                            btnText: 'EXIT',
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 16.0, bottom: 8.0),
                            child: InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                icon: Icon(
                  Icons.close,
                  size: 25.0,
                )),
          ),
          title: Padding(
            padding: EdgeInsets.zero,
            child: Text(
              'Program Setup',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );

  _getHeader() => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _getAppBar(),
            _headerText(_getTitle(), _getSubText()),
          ],
        ),
      );

  _getFooter() => Container(
        color: Colors.grey[300],
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0))),
          margin: EdgeInsets.only(top: 3.0),
          child: Container(
              height: 45.0,
              child: Center(
                child: CustomButton(
                  callBack: () {
                    if (!((controller.programSetupSteps.value ==
                                ProgramSetupSteps.WISH_LIST &&
                            controller.yourWishListPosition != -1) ||
                        (controller.programSetupSteps.value ==
                                ProgramSetupSteps.AGE &&
                            controller.agePosition != -1) ||
                        (controller.programSetupSteps.value ==
                                ProgramSetupSteps.GENDER &&
                            controller.genderPosition != -1) ||
                        (controller.programSetupSteps.value ==
                                ProgramSetupSteps.DIET &&
                            controller.familiarDietPosition != -1) ||
                        (controller.programSetupSteps.value ==
                                ProgramSetupSteps.COUNTRY &&
                            controller.countryPosition != -1))) {
                      Get.snackbar('Error', 'Please select one option',
                          backgroundColor: kPrimaryColor,
                          colorText: kWhiteColor);
                    } else {
                      if (controller.programSetupSteps.value ==
                          ProgramSetupSteps.WISH_LIST) {
                        controller.programSetupSteps.value =
                            ProgramSetupSteps.AGE;
                      } else if (controller.programSetupSteps.value ==
                          ProgramSetupSteps.AGE) {
                        controller.programSetupSteps.value =
                            ProgramSetupSteps.GENDER;
                      } else if (controller.programSetupSteps.value ==
                          ProgramSetupSteps.GENDER) {
                        controller.programSetupSteps.value =
                            ProgramSetupSteps.DIET;
                      } else if (controller.programSetupSteps.value ==
                          ProgramSetupSteps.DIET) {
                        controller.programSetupSteps.value =
                            ProgramSetupSteps.COUNTRY;
                      } else if (controller.programSetupSteps.value ==
                          ProgramSetupSteps.COUNTRY) {
                        Get.toNamed(Routes.SIGNUP);
                      }

                      controller.update();
                    }
                  },
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  btnColor: ((controller.programSetupSteps.value ==
                                  ProgramSetupSteps.WISH_LIST &&
                              controller.yourWishListPosition != -1) ||
                          (controller.programSetupSteps.value ==
                                  ProgramSetupSteps.AGE &&
                              controller.agePosition != -1) ||
                          (controller.programSetupSteps.value ==
                                  ProgramSetupSteps.GENDER &&
                              controller.genderPosition != -1) ||
                          (controller.programSetupSteps.value ==
                                  ProgramSetupSteps.DIET &&
                              controller.familiarDietPosition != -1) ||
                          (controller.programSetupSteps.value ==
                                  ProgramSetupSteps.COUNTRY &&
                              controller.countryPosition != -1))
                      ? kPrimaryColor
                      : Colors.grey,
                  btnText: 'Next',
                ),
              )),
        ),
      );

  void _bachClickHandler() {
    if (controller.programSetupSteps.value == ProgramSetupSteps.WISH_LIST) {
      Get.back();
    } else if (controller.programSetupSteps.value == ProgramSetupSteps.AGE) {
      controller.programSetupSteps.value = ProgramSetupSteps.WISH_LIST;
    } else if (controller.programSetupSteps.value == ProgramSetupSteps.GENDER) {
      controller.programSetupSteps.value = ProgramSetupSteps.AGE;
    } else if (controller.programSetupSteps.value == ProgramSetupSteps.DIET) {
      controller.programSetupSteps.value = ProgramSetupSteps.GENDER;
    } else if (controller.programSetupSteps.value ==
        ProgramSetupSteps.COUNTRY) {
      controller.programSetupSteps.value = ProgramSetupSteps.DIET;
    }

    controller.update();
  }

  _headerText(title, subtext) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              subtext,
              style: TextStyle(
                fontSize: 14.0,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      );

  _getSubText() {
    if (controller.programSetupSteps.value == ProgramSetupSteps.WISH_LIST) {
      return 'What\'s top of your wish list?';
    } else {
      return '';
    }
  }

  _getTitle() {
    if (controller.programSetupSteps.value == ProgramSetupSteps.WISH_LIST) {
      return 'Hello. what brings\nyou here today?';
    } else if (controller.programSetupSteps.value == ProgramSetupSteps.AGE) {
      return 'How old are you?';
    } else if (controller.programSetupSteps.value == ProgramSetupSteps.GENDER) {
      return 'Which gender do\nyou identify with?';
    } else if (controller.programSetupSteps.value == ProgramSetupSteps.DIET) {
      return 'How familiar are you\nwith a plant based diet?';
    } else if (controller.programSetupSteps.value ==
        ProgramSetupSteps.COUNTRY) {
      return 'What country\ndo you live in?';
    }
  }
}
