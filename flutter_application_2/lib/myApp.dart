import 'package:flutter/material.dart';
import 'package:flutter_application_2/homeController.dart';
import 'homePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext) {
    return MaterialApp(
      home: HomeController(child: MyHomePage()),
    );
  }
}
