import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plantable/app/modules/login/models/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:plantable/app/modules/login/providers/login_provider.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

class LoginController extends GetxController with StateMixin<LoginModel> {
  var token = '';

  var isPassword = true.obs;

  var isLoading = false.obs;

  late TextEditingController emailConroller;
  late TextEditingController passwordConroller;

  final LoginProvider _loginProvider = LoginProvider();
  @override
  void onInit() {
    change(null, status: RxStatus.success());
    emailConroller = TextEditingController();
    passwordConroller = TextEditingController();
    // loginProvider.getAccessToken().then((value) => token = value);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  doLogin() async {
    isLoading.value = true;
    update();
    var res = await _loginProvider.getTokenAndLogin(
        {"username": emailConroller.text, "password": passwordConroller.text});

    isLoading.value = false;
    update();

    Get.snackbar(
      'Error',
      'Invalied Cridentials',
      backgroundColor: kPrimaryColor,
      colorText: kWhiteColor,
    );
    if (res == null) {
    } else {}
  }
}
