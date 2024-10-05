import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invinic/app/libraries/constraint.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: kToolbarHeight,
      width: Get.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: menus,
      ),
    );
  }
}
