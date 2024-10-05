import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:invinic/app/libraries/mixin.dart';
import 'package:invinic/app/routes/app_pages.dart';

import '../controllers/screen404_controller.dart';

class Screen404View extends GetView<Screen404Controller> {
  const Screen404View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '404',
              style: TextStyle(
                fontSize: 150,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              'SALAH ALAMAT BRO',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Mixin().buttonRenderer(
                  'https://in-vinic.com/home', 'kembali', 'KEMBALI', () {
                Get.toNamed(Routes.HOME);
              }, 50),
            ),
          ],
        ),
      ),
    );
  }
}
