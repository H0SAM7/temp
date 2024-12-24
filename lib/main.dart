import 'package:broker/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});
  static String id = 'NavigationBar';
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
