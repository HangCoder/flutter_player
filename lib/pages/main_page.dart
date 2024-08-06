import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import 'main_cont.dart';

class MainPage extends GetView<MainCont> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: InAppWebView(
          initialOptions: controller.options,
          shouldOverrideUrlLoading: (controller, navigationAction) async {
            return NavigationActionPolicy.ALLOW;
          },
          onWebViewCreated: (InAppWebViewController webViewController) {
            controller.controller = webViewController;
            controller.loadPage();
            controller.setJavaScriptHandler(context);
          },
          // onConsoleMessage: (InAppWebViewController controller, ConsoleMessage consoleMessage) {
          //   print('======================');
          //   print(consoleMessage.message);
          // },
          androidOnPermissionRequest: (InAppWebViewController webViewController, String origin, List<String> resources) async {


            print('======================');
            print(resources);
            // return controller.permissionRequest(resources, context);
            // return PermissionRequestResponse(resources: resources, action: PermissionRequestResponseAction.GRANT);
          },
        )
    );
  }
}