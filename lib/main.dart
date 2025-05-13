import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF0F0EF)),
    );
  }
}
