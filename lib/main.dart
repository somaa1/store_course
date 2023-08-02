import 'package:flutter/material.dart';

import 'core/resources/manager_font_sizes.dart';
import 'core/routes.dart';
import 'features/splash/presentaion/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),

      },
    );
  }
}
