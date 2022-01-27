import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:plantable/base/constatnts/color_constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app/routes/app_pages.dart';
import 'base/languages/local.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // runApp(
  //   DevicePreview(
  //     enabled: !kReleaseMode,
  //     builder: (context) => MyApp(), // Wrap your app
  //   ),
  // );

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      MyApp(), // Wrap your app
    );
  });
}

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(775, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
        ],
      ),
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: kPrimaryColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      translations: Languages(), // initiate the localization
      locale: const Locale('en', 'US'), // initial localization
      fallbackLocale: const Locale('en', 'US'),
      title: "Plantable",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
