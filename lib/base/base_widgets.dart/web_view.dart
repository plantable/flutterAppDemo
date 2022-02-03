import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView example'),
      ),
      body: const WebView(
        initialUrl: 'https://https://plantable.com/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
