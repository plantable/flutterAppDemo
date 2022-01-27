import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:plantable/app/modules/signup/controllers/signup_controller.dart';
import 'package:plantable/base/base_widgets.dart/base_scaffold.dart';
import 'package:plantable/base/base_widgets.dart/custom_app_bar.dart';
import 'package:plantable/base/base_widgets.dart/custom_button.dart';
import 'package:plantable/base/base_widgets.dart/custom_text_field.dart';
import 'package:plantable/base/constatnts/color_constants.dart';
import 'package:plantable/base/languages/text_keys.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kAppBackgroundColor,
        body: controller.obx(
            (state) => SafeArea(
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
                        height: 30.0,
                      ),
                      Text(
                        kTxtCreateAccount.tr,
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      CustomTextField(
                        height: 45.0,
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        hint: 'Name',
                        prefixIcon: Icon(
                          Icons.face_outlined,
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
                        hint: 'Email',
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
                        hint: 'Password',
                        isPassword: true,
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          size: 20.0,
                          color: Colors.black,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      CustomButton(
                        callBack: () {
                          // controller.doApiCall();
                        },
                        btnText: kTxtSignup.tr,
                        btnColor: kPrimaryColor,
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10.0),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'By logging in you agreed to your ',
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.black),

                                // text: 'Geeks',
                                // style: TextStyle(fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                text: 'Terms and Conditions',
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
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10.0),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '${kTxtAlreadyExisting.tr}  ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: kPrimaryColor),

                                // text: 'Geeks',
                                // style: TextStyle(fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                text: kTxtLogin.tr,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryColor),

                                // text: 'Geeks',
                                // style: TextStyle(fontWeight: FontWeight.bold)
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
            onLoading: CircularProgressIndicator()));
  }
}
