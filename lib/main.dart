import 'package:flutter/material.dart';
import 'package:sycamore_project/screens/splash_screen.dart';
import 'core/helper_methods.dart';

void main() {
  runApp(const SycamoreApp());
}

class SycamoreApp extends StatelessWidget {
  const SycamoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


