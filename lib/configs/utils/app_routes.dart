import 'package:flutter/material.dart';
import '../../feature/home/home_page.dart';
import '../../feature/login/ui/login_page.dart';
import '../../feature/splash/ui/splash_page.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'splash':
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case 'home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case 'login':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      default:
        _erroRoute();
    }
    return null;
  }

  static Route<dynamic> _erroRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: Text('ERROR'),
        ),
        body: Text('Page not Found'),
      );
    });
  }
}
