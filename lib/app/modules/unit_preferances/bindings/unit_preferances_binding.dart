import 'package:get/get.dart';

import '../controllers/unit_preferances_controller.dart';

class UnitPreferancesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnitPreferancesController>(
      () => UnitPreferancesController(),
    );
  }
}
