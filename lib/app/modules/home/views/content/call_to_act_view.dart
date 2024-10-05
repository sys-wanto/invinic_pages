import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invinic/app/modules/home/controllers/home_controller.dart';
import 'package:seo/seo.dart';

class Call_to_act_view extends GetView<HomeController> {
  const Call_to_act_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctx) {
      return Container(
        key: ctx.key6,
        color: Colors.deepOrange,
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
                          'Siap untuk Memulai?',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Jangan tunda lagi! Hubungi kami sekarang di kontak@in-vinic.com atau isi formulir kontak untuk konsultasi gratis.',
                          style: TextStyle(fontSize: 20),
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
