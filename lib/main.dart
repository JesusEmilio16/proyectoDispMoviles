import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parcial/config/router/router.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // this widget is the root of your application
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final color = ref.watch(colorProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: Routers.route(),
      // theme: AppTheme(dark: color, selectColor: 2).getTheme(),
    );
  }
}
