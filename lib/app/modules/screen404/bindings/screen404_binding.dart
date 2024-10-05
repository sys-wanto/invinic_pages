import 'package:get/get.dart';

import '../controllers/screen404_controller.dart';

class Screen404Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Screen404Controller>(
      () => Screen404Controller(),
    );
  }
}
