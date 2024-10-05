import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:invinic/app/modules/home/controllers/home_controller.dart';
import 'package:invinic/app/modules/home/views/content/advantages_view.dart';
import 'package:invinic/app/modules/home/views/content/call_to_act_view.dart';
import 'package:invinic/app/modules/home/views/content/conclusion_view.dart';
import 'package:invinic/app/modules/home/views/content/contact_us_view.dart';
import 'package:invinic/app/modules/home/views/content/head_line_view.dart';
import 'package:invinic/app/modules/home/views/content/services_view.dart';
import 'package:invinic/app/modules/home/views/content/short_description_view.dart';
import 'package:invinic/app/modules/template/app_bar_widget.dart';

import 'package:invinic/app/modules/template/bottom_navbar_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctx) {
      return Scaffold(
        appBar: AppBarWidget(),
        body: SingleChildScrollView(
          controller: ctx.scrollController,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              HeadLine_view(),
              ShortDescription_view(),
              Advantages_view(),
              Services_view(),
              Conclusion_view(),
              Call_to_act_view(),
              Contact_us_view(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBarWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            ctx.isScrolling.value ? null : ctx.fabAction(),
          },
          child: Obx(
            () => Icon(ctx.scrollPosition.value == 7
                ? Icons.arrow_upward
                : Icons.arrow_downward),
          ),
        ),
      );
    });
  }
}
