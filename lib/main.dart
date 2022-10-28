import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_pages/bottom_nav_controller.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavController(),
    );
  }
}
