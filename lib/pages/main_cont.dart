import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class MainCont extends GetxController {

  // InAppWebViewController
  late InAppWebViewController controller;

  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
          useShouldOverrideUrlLoading: true,
          mediaPlaybackRequiresUserGesture: false,
          javaScriptCanOpenWindowsAutomatically: true
      ),
      android: AndroidInAppWebViewOptions(
          useHybridComposition: true
      ),
      ios: IOSInAppWebViewOptions(
          allowsInlineMediaPlayback: true
      )
  );

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    if (Platform.isAndroid) {
      await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
    }
  }

  // 加载页面
  void loadPage() {
    // String url = 'https://ad.td-robot.com/common_services/redirect/PHg50B3s/';
    // String url = 'http://192.168.2.39:8601/';
    String url = 'https://td-robot.com';
    controller.loadUrl(urlRequest: URLRequest(url: WebUri.uri(Uri.parse(url))));
  }

  // 设置handle
  void setJavaScriptHandler(BuildContext context) {
    // controller.addJavaScriptHandler(handlerName: 'OnKickout', callback: (args) {
    //   Get.back();
    //   BrnDialogManager.showSingleButtonDialog(context, title:'Be_Kickout'.tr , label: 'OK'.tr, onTap: () {
    //     Get.back();
    //   });
    // });
  }
}