import 'package:flutter/material.dart';
import '../../feature/splash/ui/splash_page.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'splash':
        return MaterialPageRoute(builder: (_) => const SplashPage());
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
