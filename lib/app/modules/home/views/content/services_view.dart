import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invinic/app/modules/home/controllers/home_controller.dart';
import 'package:seo/seo.dart';

class Services_view extends GetView<HomeController> {
  const Services_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctx) {
      return Container(
        key: ctx.key4,
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
                          'Layanan Kami',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '> Website Bisnis: Website yang profesional untuk mempresentasikan brand dan produk Anda.',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '> Toko Online: Platform e-commerce dengan fitur pembayaran yang aman dan mudah digunakan.',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '> Landing Page: Halaman penjualan yang dirancang untuk meningkatkan konversi.',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '> Maintenance & Support: Layanan dukungan penuh untuk menjaga website Anda selalu up-to-date dan berjalan lancar.',
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
