import 'package:get/get.dart';

import '../controllers/program_setup_controller.dart';

class ProgramSetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProgramSetupController>(
      () => ProgramSetupController(),
    );
  }
}
