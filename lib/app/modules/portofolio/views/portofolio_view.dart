import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:invinic/app/modules/template/app_bar_widget.dart';
import 'package:invinic/app/modules/template/bottom_navbar_widget.dart';
import 'package:seo/seo.dart';

import '../controllers/portofolio_controller.dart';

class PortofolioView extends GetView<PortofolioController> {
  const PortofolioView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PortofolioController>(
      builder: (ctx) {
        return Scaffold(
          appBar: AppBarWidget(),
          body: Container(
            width: Get.width,
            child: const Center(
              child: Text(
                'PortofolioView is working',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavBarWidget(),
        );
      },
    );
  }
}
