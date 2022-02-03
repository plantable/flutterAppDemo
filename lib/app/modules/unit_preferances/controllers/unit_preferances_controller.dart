import 'package:get/get.dart';

class UnitPreferancesController extends GetxController
    with StateMixin<dynamic> {
  //TODO: Implement UnitPreferancesController

  var agePosition = -1.obs;

  List<String> countryList = [
    'Imperial',
    'Metric',
  ];

  @override
  void onInit() {
    change(null, status: RxStatus.success());
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
