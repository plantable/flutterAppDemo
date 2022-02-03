import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/custom_web_view_controller.dart';

class CustomWebViewView extends GetView<CustomWebViewController> {
  

  CustomWebViewView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: 'https://https://plantable.com/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
