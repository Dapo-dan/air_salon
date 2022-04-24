import 'package:air_salon/signup.dart';
import 'package:air_salon/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String signup = '/';
  static const String splashscreen = '/RegisterPage/TodoPage/drafttodo';

  static Route<dynamic> generateroute(RouteSettings settings) {
    switch (settings.name) {
      case signup:
        return MaterialPageRoute(
          builder: (context) => const SignUp(),
        );

      case splashscreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      default:
        throw const FormatException(
            'Route not found! check Route folder again');
    }
  }
}
