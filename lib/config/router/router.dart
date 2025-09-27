import 'package:flutter/material.dart';
import 'package:parcial/config/router/app_router.dart';
import 'package:parcial/presentation/screens/count/count.dart';
import 'package:parcial/presentation/screens/screen.dart';

  static final List<AppRouter> pages = [
    AppRouter(
      patch: "/",
      title: "Home",
      description: "pantalla de inicio",
      icon: Icons.home,
      context: (context) => const HomeScreen(),
    ),
    AppRouter(
      patch: "button",
      title: "Button",
      description: "pantalla que contiene los botones",
      icon: Icons.smart_button,
      context: (context) => const ButtonScreen(),
    ),
    AppRouter(
      patch: "card",
      title: "Card",
      description: "pantalla contiene la configuracion de las cards",
      icon: Icons.card_travel,
      context: (context) => const CardScreen(),
    ),
    AppRouter(
      patch: "card",
      title: "Card2",
      description: "pantalla contiene la configuracion de las cards",
      icon: Icons.card_travel,
      context: (context) => const CardScreen(),
    ),
    AppRouter(
      patch: "form",
      title: "Form",
      description: "formularios",
      icon: Icons.forest,
      context: (context) => const FormScreen(),
    ),

    AppRouter(
      patch: "count",
      title: "Count",
      description: "contador con riverpod",
      icon: Icons.accessible_sharp,
      context: (context) => const CountScreen(),
    ),

    AppRouter(
      patch: "peti",
      title: "Peticion",
      description: "Widget petiicion",
      icon: Icons.accessible_sharp,
      context: (context) => const PeticionScren(),
    ),
  ];

  static route() => {for (var page in pages) page.patch: page.context};
}
