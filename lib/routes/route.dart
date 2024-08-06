import 'package:get/get.dart';

import '../pages/main_cont.dart';
import '../pages/main_page.dart';
import 'page.dart';

class AppRoutes {
  static final routes = [
    GetPage(
        name: AppPages.main,
        page: () => const MainPage(),
        binding: BindingsBuilder(() => [Get.put(MainCont())])
    )
  ];
}




