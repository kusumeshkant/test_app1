import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screens.dart';
import 'package:flutter_application_1/screens/splash_screen.dart';
import 'package:flutter_application_1/widgets/background_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
