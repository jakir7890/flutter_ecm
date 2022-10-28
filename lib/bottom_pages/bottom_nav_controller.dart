import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_pages/add.dart';
import 'package:flutter_app/bottom_pages/chat.dart';
import 'package:flutter_app/bottom_pages/home.dart';
import 'package:flutter_app/bottom_pages/my_adds.dart';
import 'package:flutter_app/bottom_pages/profile.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({super.key});

  @override
  State<BottomNavController> createState() => BottomNavControllerState();
}

class BottomNavControllerState extends State<BottomNavController> {
  int currentInex = 0;

  List pages = [
    HomeScreen(),
    MyAddScreen(),
    AddScreen(),
    ChatScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
            });
              currentInex = index;
          },
          currentIndex: currentInex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.purple,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded), label: 'My Adds'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_rounded), label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble), label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
      body: pages[currentInex],
    );
  }
}
