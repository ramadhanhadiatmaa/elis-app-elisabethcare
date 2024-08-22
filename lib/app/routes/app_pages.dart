import 'package:get/get.dart';
import 'package:myapp/app/modules/chat/bindings/chat_binding.dart';
import 'package:myapp/app/modules/chat/views/chat_view.dart';
import 'package:myapp/app/modules/onboard/bindings/onboard_binding.dart';
import 'package:myapp/app/modules/onboard/views/onboard_view.dart';
import 'package:myapp/app/modules/profil/bindings/profil_binding.dart';
import 'package:myapp/app/modules/profil/views/profil_view.dart';

import '../modules/antrian/bindings/antrian_binding.dart';
import '../modules/antrian/views/antrian_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kamar/bindings/kamar_binding.dart';
import '../modules/kamar/views/kamar_view.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/poli/bindings/poli_binding.dart';
import '../modules/poli/views/poli_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.onboard,
      page: () => const OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: _Paths.profil,
      page: () => const ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.chat,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.poli,
      page: () => const PoliView(),
      binding: PoliBinding(),
    ),
    GetPage(
      name: _Paths.kamar,
      page: () => const KamarView(),
      binding: KamarBinding(),
    ),
    GetPage(
      name: _Paths.antrian,
      page: () => const AntrianView(),
      binding: AntrianBinding(),
    ),
  ];
}
