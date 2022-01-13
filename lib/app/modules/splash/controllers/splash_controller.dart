import 'package:get/get.dart';
import 'package:plantable/app/routes/app_pages.dart';

class SplashController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    
    navigateToLoginSelectionPage();
    super.onInit();
    
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void navigateToLoginSelectionPage() {
    change(null,status: RxStatus.success());
Future.delayed(const Duration(milliseconds: 3000), () {


        Get.toNamed(Routes.SIGNIN_OR_GET_STARTED);


});

    
  }
}
