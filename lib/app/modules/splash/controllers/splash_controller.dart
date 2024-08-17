import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  Future<void> SplashScreen() async {
    await Future.delayed(
      const Duration(
        milliseconds: 3000,
      ),
    );

    final box = GetStorage();

    await GetStorage.init();

    if (box.read("dataCache") != null && box.read("datalogin") != null) {
      Get.offNamed(Routes.home);
    } else if (box.read("dataCache") != null && box.read("datalogin") == null) {
      Get.offNamed(Routes.login);
    } else {
      Get.offNamed(Routes.login);
    }
  }
}
