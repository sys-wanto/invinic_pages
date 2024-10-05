import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invinic/app/libraries/mixin.dart';
import 'package:invinic/app/modules/about/controllers/about_controller.dart';
import 'package:invinic/app/modules/agents/controllers/agents_controller.dart';
import 'package:invinic/app/modules/contact/controllers/contact_controller.dart';
import 'package:invinic/app/modules/home/controllers/home_controller.dart';
import 'package:invinic/app/modules/portofolio/controllers/portofolio_controller.dart';
import 'package:invinic/app/modules/screen404/controllers/screen404_controller.dart';
import 'package:invinic/app/routes/app_pages.dart';

List<Widget> menus = [
  Center(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Mixin().buttonRenderer(
        'http://in-vinic.com/contact',
        'Concatcs',
        'Contacts',
        () {
          Get.delete<HomeController>();
          Get.delete<ContactController>();
          Get.delete<PortofolioController>();
          Get.delete<AgentsController>();
          Get.delete<Screen404Controller>();
          Get.delete<AboutController>();
          Get.toNamed(Routes.CONTACT);
        },
        (kDefaultFontSize * 1.3),
      ),
    ),
  ),
  Center(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Mixin().buttonRenderer(
        'http://in-vinic.com/agents',
        'Agents',
        'Agents',
        () {
          Get.delete<HomeController>();
          Get.delete<ContactController>();
          Get.delete<PortofolioController>();
          Get.delete<AgentsController>();
          Get.delete<Screen404Controller>();
          Get.delete<AboutController>();
          Get.toNamed(Routes.AGENTS);
        },
        (kDefaultFontSize * 1.3),
      ),
    ),
  ),
  Center(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Mixin().buttonRenderer(
        'http://in-vinic.com/portofolio',
        'Portofolio',
        'Portofolio',
        () {
          Get.delete<HomeController>();
          Get.delete<ContactController>();
          Get.delete<PortofolioController>();
          Get.delete<AgentsController>();
          Get.delete<Screen404Controller>();
          Get.delete<AboutController>();
          Get.toNamed(Routes.PORTOFOLIO);
        },
        (kDefaultFontSize * 1.3),
      ),
    ),
  ),
  Center(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Mixin().buttonRenderer(
        'http://in-vinic.com/about',
        'About Us',
        'About Us',
        () {
          Get.delete<HomeController>();
          Get.delete<ContactController>();
          Get.delete<PortofolioController>();
          Get.delete<AgentsController>();
          Get.delete<Screen404Controller>();
          Get.delete<AboutController>();
          Get.toNamed(Routes.ABOUT);
        },
        (kDefaultFontSize * 1.3),
      ),
    ),
  )
];
