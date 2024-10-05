import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:invinic/app/modules/home/controllers/home_controller.dart';
import 'package:invinic/app/modules/home/views/home_view.dart';
import 'package:invinic/app/modules/screen404/views/screen404_view.dart';
import 'package:seo/html/seo_controller.dart';
import 'package:seo/html/tree/widget_tree.dart';

import 'app/routes/app_pages.dart';

import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SeoController(
      enabled: true,
      tree: WidgetTree(context: context),
      child: GetMaterialApp(
        theme: ThemeData(
          fontFamily: 'Dosis',
        ),
        title: "Application",
        initialBinding: BindingsBuilder(() {
          Get.delete<HomeController>();
          Get.put(HomeView());
        }),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
        unknownRoute:
            GetPage(name: '/notfound', page: () => const Screen404View()),
      ),
    );
  }
}

class RedirectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Menggunakan Get.toNamed untuk redirect
    // Kita bisa menggunakan Future.delayed untuk memastikan bahwa
    // redirect terjadi setelah widget dibangun
    Future.delayed(Duration.zero, () {
      Get.offAllNamed(AppPages.INITIAL); // Redirect ke halaman utama
    });
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(), // Menampilkan indikator loading
      ),
    );
  }
}
//Get.toNamed(Routes.HOME)