import 'dart:collection';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

class LoginProvider extends GetConnect {
  Future<dynamic> getTokenAndLogin(params) async {
    try {
      print(
          'URL ==> https://parcopy-euphebe.cs65.force.com/services/apexrest/auth');
      final tokenResponse = await post(
        'https://parcopy-euphebe.cs65.force.com/services/apexrest/auth',
        json.encode({
          "grant_type": "password",
          "client_id": "FHR1fjeJKFGneIfOTfSDWoohz5xESdKM",
          "client_secret": "WzY40ZX5PtxOZxm1A4phgunig8qTV7NQoVLpHh0x61fzUzNF",
          "username": "iosApp",
          "password": "\$os!App2345"
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      print('AUTH RESPONSE');
      print(tokenResponse.body);

      var loginRes = await doLogin(tokenResponse.body['access_token'], params);

      return loginRes;
    } catch (e) {
      print(e.toString());
      Get.snackbar(
        'Error',
        e.toString(),
        backgroundColor: kPrimaryColor,
        colorText: kWhiteColor,
      );
      return null;
    }
  }

  Future<dynamic> doLogin(token, params) async {
    print(
        "URL ==> https://parcopy-euphebe.cs65.force.com/services/apexrest/user");
    print("TOKEN ==> $token");
    print("PARAMS ==> $params");

    HashMap<String, String> headersss = HashMap<String, String>();
    headersss['authorizationtoken'] = token;
    headersss['Content-Type'] = 'application/json';

    print('HEADERS =>');
    print(headersss);
    final response = await post(
      'https://parcopy-euphebe.cs65.force.com/services/apexrest/user',
      json.encode(params),
      headers: headersss,
    );
    print(response.statusCode);

    print(response.body);
    return response.body;
  }
}
