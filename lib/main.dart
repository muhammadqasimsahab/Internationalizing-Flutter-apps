import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_language_change/home_screen.dart';
import 'package:localization_language_change/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      fallbackLocale: const Locale('en', 'US'),
      locale: const Locale('en', 'US'),
      translations: Languages(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
