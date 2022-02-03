
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController with StateMixin {
  //TODO: Implement ProfileController

  final count = 0.obs;

  var image = ''.obs;
  final ImagePicker _picker = ImagePicker();

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

  void getImage(source) async {
    XFile? file = await _picker.pickImage(source: source);
    image.value = file!.path;
    update();
  }
}
