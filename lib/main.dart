import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
      debugShowCheckedModeBanner: false,
      home: const SplashView()
    );
  }
}

