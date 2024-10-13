import 'package:flutter/material.dart';
import 'config/router/app_router.dart';
import 'package:h2o_admin_app/config/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Material App',
      theme: AppTheme(selectedColor: 0).theme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
