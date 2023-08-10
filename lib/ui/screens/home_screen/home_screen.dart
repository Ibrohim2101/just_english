import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:just_english/ui/screens/bottom_navigation_bar/account_screen/account_screen.dart';
import 'package:just_english/ui/screens/bottom_navigation_bar/main_screen/main_screen.dart';
import 'package:just_english/ui/screens/bottom_navigation_bar/rating_screen/rating_screen.dart';
import 'package:just_english/ui/screens/bottom_navigation_bar/translater_screen/translater_screen.dart';
import 'package:just_english/ui/theme/app_colors/app_colors.dart';
import 'package:line_icons/line_icons.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<Widget> screens = [
//     MainScreen(),
//     RatingScreen(users: [

//   User(name: 'John', score: 34),
//   User(name: 'Emma', score: 34),
//   User(name: 'Michael', score: 56),
//   User(name: 'Sarah', score: 656),
//   // Add more users here

//     ],),
//     TranslaterScreen(),
//     AccountScreen()
//   ];

//   int initialScreen = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (index){
//           setState(() {
//             initialScreen = index;
//           });
//         },
//         currentIndex: initialScreen,
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'home'),
//           BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'rating'),
//           BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'translater'),
//           BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'accaut'),
//         ],
//       ),
//       backgroundColor: Colors.blue[800],
//       body: screens[initialScreen],
//     );
//   }
// }


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  List<Widget> _screens = <Widget>[
    MainScreen(),
    RatingScreen(),
    TranslaterScreen(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:[
            BoxShadow(
              blurRadius: 2,
              color: Colors.black.withOpacity(0.1)
            )
          ]
        ),
        child: SafeArea(
          child:Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8
            ),
            child: GNav(
              rippleColor: Colors.grey[100]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.red,
              color: Colors.black,
              tabs: [
              GButton(icon: LineIcons.home,text: 'Home'),
              GButton(icon: LineIcons.nimblr,text: 'Home'),
              GButton(icon: LineIcons.home,text: 'Home'),
              GButton(icon: LineIcons.user,text: 'Home'),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            ),
            ) 
          ),
      ),
    );
  }
}
