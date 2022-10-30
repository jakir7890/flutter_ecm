import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_pages/bottom_nav_controller.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './bottom_pages/chat.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(MyApp());

  Box box = await Hive.openBox('contact-box');
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'nav-screen': (context) => BottomNavController(),
        'first-scrn': (context) => FirstScreen(),
        'second-scrn': (context) => SecondScreen(),
      },
      initialRoute: 'nav-screen',
    );
  }
}
