import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plantable/app/modules/login/models/login_model.dart';
import 'package:plantable/app/modules/login/providers/login_provider.dart';
import 'package:plantable/app/routes/app_pages.dart';
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
    // Get.offAllNamed(Routes.DASHBOARD);
    if (emailConroller.text.isNotEmpty && passwordConroller.text.isNotEmpty) {
      isLoading.value = true;
      update();
      var res = await _loginProvider.getTokenAndLogin({
        "username": emailConroller.text,
        "password": passwordConroller.text
      });

      isLoading.value = false;
      update();

      if (res.responseCode == 200) {
        Get.offAllNamed(Routes.DASHBOARD);
      } else if (res.responseCode == 401) {
        Get.snackbar('Error', 'Invalied user name or password',
            backgroundColor: kPrimaryColor, colorText: Colors.white);
      }
    } else {
      Get.snackbar('Error', 'Email or password should not be empty',
          backgroundColor: kPrimaryColor, colorText: Colors.white);
    }
  }
}
