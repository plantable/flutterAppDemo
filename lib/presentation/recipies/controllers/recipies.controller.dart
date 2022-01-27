import 'package:get/get.dart';

class RecipiesController extends GetxController {
  //TODO: Implement RecipiesController

  var items = ['Breakfast', 'Lunch', 'Dinner', 'Snacks', 'Side Salads'];
  final count = 0.obs;
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
  void increment() => count.value++;
}
