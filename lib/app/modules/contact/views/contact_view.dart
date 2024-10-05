import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:invinic/app/modules/template/app_bar_widget.dart';
import 'package:invinic/app/modules/template/bottom_navbar_widget.dart';

import '../controllers/contact_controller.dart';

class ContactView extends GetView<ContactController> {
  const ContactView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactController>(builder: (context) {
      return Scaffold(
        appBar: AppBarWidget(),
        body: const Center(
          child: Text(
            'ContactView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
        bottomNavigationBar: BottomNavBarWidget(),
      );
    });
  }
}
