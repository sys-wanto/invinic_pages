import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:invinic/app/modules/template/app_bar_widget.dart';
import 'package:invinic/app/modules/template/bottom_navbar_widget.dart';

import '../controllers/agents_controller.dart';

class AgentsView extends GetView<AgentsController> {
  const AgentsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AgentsController>(
      builder: (context) {
        return Scaffold(
          appBar: AppBarWidget(),
          body: const Center(
            child: Text(
              'AgentsView is working',
              style: TextStyle(fontSize: 20),
            ),
          ),
          bottomNavigationBar: BottomNavBarWidget(),
        );
      },
    );
  }
}
