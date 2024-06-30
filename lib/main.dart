import 'package:book_hunters/Config/Themes.dart';
import 'package:book_hunters/Pages/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Hunters',
      theme: lightTheme,
      home: const WelcomePage(),
    );
  }
}
