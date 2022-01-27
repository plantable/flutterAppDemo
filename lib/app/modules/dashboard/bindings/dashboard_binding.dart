import 'package:get/get.dart';
import 'package:plantable/presentation/reboot/controllers/reboot.controller.dart';
import 'package:plantable/presentation/recipies/controllers/recipies.controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
      
    );
     Get.lazyPut<RecipiesController>(
      () => RecipiesController(),
      
    );
    Get.lazyPut<RebootController>(
      () => RebootController(),
      
    );
  }
}
