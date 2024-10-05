import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invinic/app/modules/home/controllers/home_controller.dart';
import 'package:seo/seo.dart';

class Conclusion_view extends GetView<HomeController> {
  const Conclusion_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctx) {
      return Container(
        key: ctx.key5,
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
                          'Mengapa Memilih in-vinic.com?',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Kami memahami bahwa setiap bisnis memiliki kebutuhan yang unik. Tim kami berkomitmen untuk memberikan solusi website yang tepat, efektif, dan sesuai dengan budget Anda. Dengan pengalaman dan keahlian lokal di Malang, kami siap membantu bisnis Anda tumbuh secara online.',
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
