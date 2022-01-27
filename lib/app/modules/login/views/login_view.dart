import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';
import 'package:plantable/base/base_widgets.dart/base_scaffold.dart';
import 'package:plantable/base/base_widgets.dart/custom_app_bar.dart';
import 'package:plantable/base/base_widgets.dart/custom_button.dart';
import 'package:plantable/base/base_widgets.dart/custom_text_field.dart';
import 'package:plantable/base/base_widgets.dart/loader.dart';
import 'package:plantable/base/constatnts/color_constants.dart';
import 'package:plantable/base/languages/text_keys.dart';
import 'package:plantable/base/post_api_service.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kAppBackgroundColor,
        body: Obx(() => SafeArea(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomAppBar(
                          backButton: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 25.0,
                                )),
                          ),
                          title: Container(),
                          closeIcon: Container(),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: double.infinity,
                          child: Text(
                            kTxtPlantable.tr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          kTxtOnboardCreatAccEat.tr,
                          style: TextStyle(fontSize: 14.0),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        CustomTextField(
                          height: 45.0,
                          controller: controller.emailConroller,
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          hint: kTxtEmail.tr,
                          prefixIcon: Icon(
                            Icons.email,
                            size: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        CustomTextField(
                          height: 45.0,
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          hint: kTxtPassword.tr,
                          controller: controller.passwordConroller,
                          isPassword: controller.isPassword.value,
                          suffixIcon: InkWell(
                            onTap: () {
                              controller.isPassword.value =
                                  !controller.isPassword.value;
                              controller.update();
                            },
                            child: Icon(
                              !controller.isPassword.value
                                  ? Icons.remove_red_eye
                                  : Icons.visibility_off_sharp,
                              size: 20.0,
                              color: Colors.black,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        CustomButton(
                          callBack: () async {
                            print(controller.emailConroller.text);
                            controller.doLogin();
                          },
                          btnText: kTxtLogin.tr,
                          btnColor: kPrimaryColor,
                          margin: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                        ),
                        Text(
                          kTxtForgotPassword.tr,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: EdgeInsets.all(30.0),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: kTxtBySign.tr,
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black),

                                  // text: 'Geeks',
                                  // style: TextStyle(fontWeight: FontWeight.bold)
                                ),
                                TextSpan(
                                  text: kTxtCreateAccount.tr,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),

                                  // text: 'Geeks',
                                  // style: TextStyle(fontWeight: FontWeight.bold)
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/app_bg.jpg',
                          height: 150,
                          width: 150,
                        )
                      ],
                    ),
                  ),
                  if (controller.isLoading.value) Loader()
                ],
              ),
            )));
  }
}
