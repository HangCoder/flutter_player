import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/page.dart';
import 'routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'watch me',
      getPages: AppRoutes.routes,
      initialRoute: AppPages.main,
    );
  }
}
