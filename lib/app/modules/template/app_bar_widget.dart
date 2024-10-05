import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invinic/app/libraries/ColorPallete.dart';
import 'package:invinic/app/libraries/constraint.dart';
import 'package:invinic/app/libraries/mixin.dart';
import 'package:invinic/app/modules/about/controllers/about_controller.dart';
import 'package:invinic/app/modules/agents/controllers/agents_controller.dart';
import 'package:invinic/app/modules/contact/controllers/contact_controller.dart';
import 'package:invinic/app/modules/home/controllers/home_controller.dart';
import 'package:invinic/app/modules/portofolio/controllers/portofolio_controller.dart';
import 'package:invinic/app/modules/screen404/controllers/screen404_controller.dart';
import 'package:invinic/app/routes/app_pages.dart';
import 'package:seo/seo.dart';

// List<Widget> menus = [
//   Center(
//     child: Padding(
//       padding: EdgeInsets.symmetric(horizontal: 8),
//       child: Mixin().buttonRenderer(
//         'http://in-vinic.com/contact',
//         'Concatcs',
//         'Contacts',
//         () {
//           Get.toNamed(Routes.CONTACT);
//         },
//       ),
//     ),
//   ),
//   Center(
//     child: Padding(
//       padding: EdgeInsets.symmetric(horizontal: 8),
//       child: Mixin().buttonRenderer(
//         'http://in-vinic.com/agents',
//         'Agents',
//         'Agents',
//         () {
//           Get.toNamed(Routes.AGENTS);
//         },
//       ),
//     ),
//   ),
//   Center(
//     child: Padding(
//       padding: EdgeInsets.symmetric(horizontal: 8),
//       child: Mixin().buttonRenderer(
//         'http://in-vinic.com/portofolio',
//         'Portofolio',
//         'Portofolio',
//         () {
//           Get.toNamed(Routes.PORTOFOLIO);
//         },
//       ),
//     ),
//   ),
//   Center(
//     child: Padding(
//       padding: EdgeInsets.symmetric(horizontal: 8),
//       child: Mixin().buttonRenderer(
//         'http://in-vinic.com/about',
//         'About Us',
//         'About Us',
//         () {
//           Get.toNamed(Routes.ABOUT);
//         },
//       ),
//     ),
//   )
// ];

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      shadowColor: Colors.black,
      // title: Seo.link(
      //   href: 'http://in-vinic.com/',
      //   anchor: 'invinic logo',
      //   child: InkWell(
      //     onTap: () {
      //       Get.toNamed(Routes.HOME);
      //     },
      //     hoverColor: Colors.white.withOpacity(1),
      //     splashColor: Colors.white.withOpacity(1),
      //     focusColor: Colors.white.withOpacity(1),
      //     child: const Text('INVINIC_'),
      //   ),
      // ),
      elevation: 5,
      title: Seo.image(
        alt: 'INVINIC HOME',
        src: 'in-vinic.com/assets/logo.png',
        child: Seo.link(
          anchor: 'INVINIC HOME',
          href: 'http://in-vinic.com',
          child: IconButton(
            hoverColor: Colors.white.withOpacity(0),
            splashColor: Colors.white.withOpacity(0),
            focusColor: Colors.white.withOpacity(0),
            highlightColor: Colors.white.withOpacity(0),
            onPressed: () {
              Get.delete<HomeController>();
              Get.delete<ContactController>();
              Get.delete<PortofolioController>();
              Get.delete<AgentsController>();
              Get.delete<Screen404Controller>();
              Get.delete<AboutController>();
              Get.toNamed(Routes.HOME);
            },
            icon: Image.asset(
              '/png/logo.png',
              fit: BoxFit.fitHeight,
              width: kToolbarHeight * 3,
            ),
            iconSize: (kToolbarHeight * 0.5),
          ),
        ),
      ),
      // title: Mixin().buttonRenderer(
      //   'http://in-vinic.com',
      //   'invinic home',
      //   'INVINIC_',
      //   () {
      //     Get.delete<HomeController>();
      //     Get.delete<ContactController>();
      //     Get.delete<PortofolioController>();
      //     Get.delete<AgentsController>();
      //     Get.delete<Screen404Controller>();
      //     Get.delete<AboutController>();
      //     Get.toNamed(Routes.HOME);
      //   },
      //   (kTextTabBarHeight * 0.5),
      // ),
      centerTitle: false,
      actions: menus,
    );
    // return AppBar(
    //   automaticallyImplyLeading: false,
    //   backgroundColor: Colors.white,
    //   shadowColor: Colors.black,
    //   // title: Seo.link(
    //   //   href: 'http://in-vinic.com/',
    //   //   anchor: 'invinic logo',
    //   //   child: InkWell(
    //   //     onTap: () {
    //   //       Get.toNamed(Routes.HOME);
    //   //     },
    //   //     hoverColor: Colors.white.withOpacity(1),
    //   //     splashColor: Colors.white.withOpacity(1),
    //   //     focusColor: Colors.white.withOpacity(1),
    //   //     child: const Text('INVINIC_'),
    //   //   ),
    //   // ),
    //   elevation: 5,
    //   title: Mixin().buttonRenderer(
    //     'http://in-vinic.com',
    //     'invinic home',
    //     'INVINIC_',
    //     () {
    //       Get.delete<HomeController>();
    //       Get.delete<ContactController>();
    //       Get.delete<PortofolioController>();
    //       Get.delete<AgentsController>();
    //       Get.delete<Screen404Controller>();
    //       Get.delete<AboutController>();
    //       Get.toNamed(Routes.HOME);
    //     },
    //     kTextTabBarHeight,
    //   ),
    //   centerTitle: false,
    //   actions: menus,
    // );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
