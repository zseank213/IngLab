import 'package:flutter/material.dart';
import 'package:inglab/lib.dart';

const routeLogin = "/login";
const routeHome = "/home";

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routeLogin:
      return SmoothAnimationRoute(const LoginView());
    case routeHome:
      return SmoothAnimationRoute(const HomeView());
  }
  return MaterialPageRoute(
    builder: (context) => const SplashScreenView(),
  );
}
