import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:instagram_clone/features/menu/home_page.dart';

Route navigateToHomePage() {
  return MaterialPageRoute(
    builder: (BuildContext context) {
      return const HomePage();
    },
  );
}

class AppRouter {
  Route routes(RouteSettings settings) {
    log('route : ${settings.name}');
    switch (settings.name) {
      case "/":
        return navigateToHomePage();
      case HomePage.route:
        return navigateToHomePage();
      default:
        return navigateToHomePage();
    }
  }
}
