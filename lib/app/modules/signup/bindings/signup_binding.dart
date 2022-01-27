import 'package:get/get.dart';
import 'package:plantable/app/modules/login/controllers/login_controller.dart';

import '../controllers/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(
      () => SignupController(),
    );

    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
