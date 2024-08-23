import 'package:get/get.dart';

import '../controllers/detaildokter_controller.dart';

class DetaildokterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetaildokterController>(
      () => DetaildokterController(),
    );
  }
}
