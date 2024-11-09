import 'package:app_fluter_unitask/presentation/router/main_router.dart';
import 'package:app_fluter_unitask/presentation/style/main_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: mainRouter,
      theme: mainTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
