import 'package:get/get.dart';

import '../controllers/reboot_journey_item_detail_view_controller.dart';

class RebootJourneyItemDetailViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RebootJourneyItemDetailViewController>(
      () => RebootJourneyItemDetailViewController(),
    );
  }
}
