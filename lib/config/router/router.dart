import 'package:flutter/material.dart';
import 'package:parcial/config/router/app_router.dart';
// import 'package:parcial/presentation/screens/count/count.dart';
import 'package:parcial/presentation/screens/screen.dart';

class Routers {
  static final List<AppRouter> pages = [
    AppRouter(
      patch: "/",
      title: "Home",
      description: "pantalla de inicio",
      icon: Icons.home,
      context: (context) => const HomeScreen(),
    ),

    AppRouter(
      patch: "form",
      title: "Form",
      description: "formularios",
      icon: Icons.assignment_outlined,
      context: (context) => const FormScreen(),
    ),

    AppRouter(
      patch: "peti",
      title: "Request",
      description: "Widget request",
      icon: Icons.help_outline ,
      context: (context) => const RequestScreen(),
    ),
  ];

  static route() => {for (var page in pages) page.patch: page.context};
}
