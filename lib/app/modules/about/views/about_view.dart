import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:invinic/app/modules/about/controllers/about_controller.dart';
import 'package:invinic/app/modules/template/app_bar_widget.dart';
import 'package:invinic/app/modules/template/bottom_navbar_widget.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutController>(
      builder: (context) {
        return Scaffold(
          appBar: AppBarWidget(),
          body: const Center(
            child: Text(
              'AboutView is working',
              style: TextStyle(fontSize: 20),
            ),
          ),
          bottomNavigationBar: BottomNavBarWidget(),
        );
      },
    );
  }
}
