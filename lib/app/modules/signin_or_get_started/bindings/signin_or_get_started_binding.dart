import 'package:get/get.dart';

import '../controllers/signin_or_get_started_controller.dart';

class SigninOrGetStartedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SigninOrGetStartedController>(
      () => SigninOrGetStartedController(),
    );
  }
}
