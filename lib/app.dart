import 'package:appointmennt_booking_system/core/app_theme/theme_data.dart';
import 'package:appointmennt_booking_system/view/splashscreeen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      theme: getApplicationTheme(),
      routes: {
        "/": (context) => const SplashScreen(),
      },
    );
  }
}
