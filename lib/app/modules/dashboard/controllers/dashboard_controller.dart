import 'package:get/get.dart';
import 'package:get_cli/common/utils/json_serialize/json_ast/utils/grapheme_splitter.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  var currentPage = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment(val) {
    currentPage = val;
  }

  String getAppbarTitle() {
    String title = "Recipies";
    if (currentPage.value == 1) {
      title = 'Tracking';
    } else if (currentPage.value == 2) {
      title = 'Reboot';
    } else if (currentPage.value == 3) {
      title = 'Coach';
    }
    return title;
  }
}
