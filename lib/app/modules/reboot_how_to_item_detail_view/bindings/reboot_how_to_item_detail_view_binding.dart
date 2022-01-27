import 'package:get/get.dart';

import '../controllers/reboot_how_to_item_detail_view_controller.dart';

class RebootHowToItemDetailViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RebootHowToItemDetailViewController>(
      () => RebootHowToItemDetailViewController(),
    );
  }
}
