part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splash = _Paths.splash;
  static const login = _Paths.login;
  static const home = _Paths.home;
  static const onboard = _Paths.onboard;
  static const profil = _Paths.profil;
  static const chat = _Paths.chat;
  static const poli = _Paths.poli;
  static const kamar = _Paths.kamar;
  static const antrian = _Paths.antrian;
  static const detaildokter = _Paths.detaildokter;
}

abstract class _Paths {
  _Paths._();
  static const splash = '/splash';
  static const login = '/login';
  static const home = '/home';
  static const onboard = '/onboard';
  static const profil = '/profil';
  static const chat = '/chat';
  static const poli = '/poli';
  static const kamar = '/kamar';
  static const antrian = '/antrian';
  static const detaildokter = '/detaildokter';
}
