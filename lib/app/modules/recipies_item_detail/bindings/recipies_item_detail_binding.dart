import 'package:get/get.dart';

import '../controllers/recipies_item_detail_controller.dart';

class RecipiesItemDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecipiesItemDetailController>(
      () => RecipiesItemDetailController(),
    );
  }
}
