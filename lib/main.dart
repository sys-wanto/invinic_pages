import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:seo_renderer/helpers/renderer_state.dart';
import 'package:seo_renderer/helpers/robot_detector_vm.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    RobotDetector(
      debug: true,
      child: GetMaterialApp(
        theme: ThemeData(
          fontFamily: 'Dosis',
        ),
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
        navigatorObservers: [seoRouteObserver],
      ),
    ),
  );
}
