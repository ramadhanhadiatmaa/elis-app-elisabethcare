part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splash = _Paths.splash;
  static const login = _Paths.login;
  static const home = _Paths.home;
  static const onboard = _Paths.onboard;
  static const profil = _Paths.profil;
  static const chat = _Paths.chat;
}

abstract class _Paths {
  _Paths._();
  static const splash = '/splash';
  static const login = '/login';
  static const home = '/home';
  static const onboard = '/onboard';
  static const profil = '/profil';
  static const chat = '/chat';
}