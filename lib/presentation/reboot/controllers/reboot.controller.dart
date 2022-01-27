import 'package:get/get.dart';

class RebootController extends GetxController {
  //TODO: Implement RebootController

  var selectedPosition = 0.obs;

  var listItems = [
    'Everything',
    'Biology, Body & Brain',
    'Lifestyle',
    'Nutrition',
    'Practical Tips'
  ];

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

  void increment(pos) {
    selectedPosition.value = pos;
    update();
  }
}
