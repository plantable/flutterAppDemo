import 'package:get/get.dart';
import 'package:plantable/app/modules/program_setup/views/your_wish_list_view.dart';

enum ProgramSetupSteps { WISH_LIST, AGE, GENDER, DIET, COUNTRY }

class ProgramSetupController extends GetxController with StateMixin<dynamic> {
  var yourWishListPosition = -1.obs;

  var agePosition = -1.obs;

  var genderPosition = -1.obs;

  var familiarDietPosition = -1.obs;
  var countryPosition = -1.obs;

  var programSetupSteps = ProgramSetupSteps.WISH_LIST.obs;
  List<String> yourWishList = [
    'Loose Weight',
    'Improve Chronic Condition',
    'Mental Health',
    'More Energy',
    'Harmonic Health',
    'Cancer Support',
    'Environmental Impact',
    'Improve Athletic Performance',
    'Other :)'
  ];

  List<String> genderList = [
    'Male',
    'Female',
    'Non-binary',
    'Prefer Not To Say',
  ];

  List<String> ageList = [
    'Below 18',
    '18-25',
    '26-34',
    '35-44',
    '45-54',
    '55-64',
    '64-75',
    '75+',
  ];

  List<String> dietList = [
    'I\'m New',
    'I\'ve Tried It Before',
    'I\'m Vegan/Vegetarian',
  ];
  List<String> countryList = [
    'Canada',
    'USA',
    'ElseWhere',
  ];
  final count = 0.obs;
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
  void increment() => count.value++;
}
