import 'package:get/get.dart';

import 'package:plantable/app/modules/home/bindings/home_binding.dart';
import 'package:plantable/app/modules/home/views/home_view.dart';
import 'package:plantable/app/modules/login/bindings/login_binding.dart';
import 'package:plantable/app/modules/login/views/login_view.dart';
import 'package:plantable/app/modules/program_setup/bindings/program_setup_binding.dart';
import 'package:plantable/app/modules/program_setup/views/program_setup_view.dart';
import 'package:plantable/app/modules/signin_or_get_started/bindings/signin_or_get_started_binding.dart';
import 'package:plantable/app/modules/signin_or_get_started/views/signin_or_get_started_view.dart';
import 'package:plantable/app/modules/signup/bindings/signup_binding.dart';
import 'package:plantable/app/modules/signup/views/signup_view.dart';
import 'package:plantable/app/modules/splash/bindings/splash_binding.dart';
import 'package:plantable/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
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
  ];
}
