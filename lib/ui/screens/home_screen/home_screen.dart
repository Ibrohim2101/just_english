import 'package:flutter/material.dart';
import 'package:just_english/ui/screens/bottom_navigation_bar/account_screen/account_screen.dart';
import 'package:just_english/ui/screens/bottom_navigation_bar/main_screen/main_screen.dart';
import 'package:just_english/ui/screens/bottom_navigation_bar/rating_screen/rating_screen.dart';
import 'package:just_english/ui/screens/bottom_navigation_bar/translater_screen/translater_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = [
    MainScreen(),
    RatingScreen(users: [

  User(name: 'John', score: 34),
  User(name: 'Emma', score: 34),
  User(name: 'Michael', score: 56),
  User(name: 'Sarah', score: 656),
  // Add more users here

    ],),
    TranslaterScreen(),
    AccountScreen()
  ];

  int initialScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            initialScreen = index;
          });
        },
        currentIndex: initialScreen,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'rating'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'translater'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'accaut'),
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: screens[initialScreen],
    );
  }
}



