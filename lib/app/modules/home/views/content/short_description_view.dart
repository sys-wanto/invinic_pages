import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invinic/app/modules/home/controllers/home_controller.dart';
import 'package:seo/seo.dart';

class ShortDescription_view extends GetView<HomeController> {
  const ShortDescription_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctx) {
      return Container(
        key: ctx.key2,
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
                          'Di era digital ini, memiliki website yang profesional bukan lagi pilihan, melainkan kebutuhan. In-vinic.com menawarkan jasa pembuatan website di Malang yang dirancang khusus untuk mengoptimalkan visibilitas online Anda, meningkatkan engagement, dan mendorong konversi.',
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
