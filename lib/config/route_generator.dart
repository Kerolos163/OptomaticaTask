import 'package:flutter/material.dart';
import 'package:opticaltask/config/app_routes.dart';
import 'package:opticaltask/feature/layout/presentation/view/layout_screen.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case AppRoutes.layoutScreen:
        return MaterialPageRoute(builder: (context) => const LatoutScreen());

      default:
        return _unDefinedRoute();
    }
  }

  static Route<dynamic> _unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text(
            'un defined route!!',
          ),
        ),
      ),
    );
  }
}
