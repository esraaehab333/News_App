// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'article_model.dart';

class WebView extends StatefulWidget {
  const WebView({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late final WebViewController controller;
  @override
  void initState() {
    controller = WebViewController()
      ..loadRequest(Uri.parse(widget.articleModel.Url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 36),
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
