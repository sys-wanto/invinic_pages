import 'package:animated_svg/animated_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:invinic/app/libraries/ColorPallete.dart';
import 'package:invinic/app/modules/home/controllers/home_controller.dart';
import 'package:seo/seo.dart';

class HeadLine_view extends GetView<HomeController> {
  const HeadLine_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (ctx) {
        return Container(
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          key: ctx.key1,
          height: Get.height - (kToolbarHeight * 2),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Seo.text(
                  text:
                      'in-vinic.com - Jasa Pembuatan Website Profesional di Malang.',
                  style: TextTagStyle.p,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jasa Pembuatan Website Profesional di Malang.',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'in-vinic.com',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Tingkatkan Bisnis Anda dengan Website Berkualitas yang Didesain untuk Menarik dan Mengonversi Pelanggan di Malang.',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
