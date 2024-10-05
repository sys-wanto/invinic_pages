import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invinic/app/modules/home/controllers/home_controller.dart';
import 'package:seo/seo.dart';

class Contact_us_view extends GetView<HomeController> {
  const Contact_us_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctx) {
      return Container(
        key: ctx.key7,
        color: Colors.deepPurple,
        height: Get.height - (kToolbarHeight * 2),
        child: Center(
          child: Row(
            children: [
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.all(150.0),
                  child: Seo.text(
                    text: 'HomeView Is working',
                    style: TextTagStyle.p,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dapatkan Website Terbaik untuk Bisnis Anda Sekarang!',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: SizedBox(),
              ),
            ],
          ),
        ),
      );
    });
  }
}
