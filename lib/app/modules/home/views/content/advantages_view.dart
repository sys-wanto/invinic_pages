import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invinic/app/modules/home/controllers/home_controller.dart';
import 'package:seo/seo.dart';

class Advantages_view extends GetView<HomeController> {
  const Advantages_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (ctx) {
        return Container(
          key: ctx.key3,
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
                            'Keunggulan Kami',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '> Desain Responsif & Modern: Kami menciptakan website yang tidak hanya menarik secara visual, tetapi juga berfungsi optimal di semua perangkat.',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '> SEO On-Page Optimal: Website Anda akan dibangun dengan struktur SEO-friendly, memastikan peringkat tinggi di mesin pencari seperti Google.',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '> Kustomisasi Penuh: Setiap website dirancang sesuai kebutuhan unik bisnis Anda, dengan fitur-fitur yang relevan dan user-friendly.',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '> Pengalaman Lokal: Berlokasi di Malang, kami memahami pasar lokal dan kebutuhan bisnis Anda.',
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
      },
    );
  }
}
