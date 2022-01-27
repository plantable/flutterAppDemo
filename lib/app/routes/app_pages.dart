import 'package:get/get.dart';

import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/program_setup/bindings/program_setup_binding.dart';
import '../modules/program_setup/views/program_setup_view.dart';
import '../modules/reboot_how_to_item_detail_view/bindings/reboot_how_to_item_detail_view_binding.dart';
import '../modules/reboot_how_to_item_detail_view/views/reboot_how_to_item_detail_view_view.dart';
import '../modules/reboot_journey_item_detail_view/bindings/reboot_journey_item_detail_view_binding.dart';
import '../modules/reboot_journey_item_detail_view/views/reboot_journey_item_detail_view_view.dart';
import '../modules/recipies_item_detail/bindings/recipies_item_detail_binding.dart';
import '../modules/recipies_item_detail/views/recipies_item_detail_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/shopping_list/bindings/shopping_list_binding.dart';
import '../modules/shopping_list/views/shopping_list_view.dart';
import '../modules/signin_or_get_started/bindings/signin_or_get_started_binding.dart';
import '../modules/signin_or_get_started/views/signin_or_get_started_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN_OR_GET_STARTED,
      page: () => SigninOrGetStartedView(),
      binding: SigninOrGetStartedBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PROGRAM_SETUP,
      page: () => ProgramSetupView(),
      binding: ProgramSetupBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.SHOPPING_LIST,
      page: () => ShoppingListView(),
      binding: ShoppingListBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.RECIPIES_ITEM_DETAIL,
      page: () => RecipiesItemDetailView(),
      binding: RecipiesItemDetailBinding(),
    ),
    GetPage(
      name: _Paths.REBOOT_JOURNEY_ITEM_DETAIL_VIEW,
      page: () => RebootJourneyItemDetailView(),
      binding: RebootJourneyItemDetailViewBinding(),
    ),
    GetPage(
      name: _Paths.REBOOT_HOW_TO_ITEM_DETAIL_VIEW,
      page: () => RebootHowToItemDetailView(),
      binding: RebootHowToItemDetailViewBinding(),
    ),
  ];
}
