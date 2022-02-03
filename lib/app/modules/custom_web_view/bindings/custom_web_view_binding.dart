import 'package:get/get.dart';

import '../controllers/custom_web_view_controller.dart';

class CustomWebViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomWebViewController>(
      () => CustomWebViewController(),
    );
  }
}
