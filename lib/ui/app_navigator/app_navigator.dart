import 'package:flutter/material.dart';
import 'package:just_english/ui/app_navigator/app_routes.dart';
import 'package:just_english/ui/screens/home_screen/home_screen.dart';
import 'package:just_english/ui/screens/lesson_screen/lesson_screen.dart';
// import 'package:just_english/ui/screens/lessons/lecture_screen/lecture_screen.dart';
// import 'package:just_english/ui/screens/lessons/reading_screen/reading_screen.dart';
import 'package:just_english/ui/screens/registration/signup_screen/signup_screen.dart';
import 'package:just_english/ui/screens/registration/login_screen/login_screen.dart';
import 'package:just_english/ui/screens/registration/splash_screen/splash_screen.dart';
import 'package:just_english/ui/screens/registration/welcome_screen/welcome_screen.dart';

abstract class AppNavigator {
  static String get initialRoute => AppRoutes.spashScreen;

  static Map<String, WidgetBuilder> get routes => {
        AppRoutes.spashScreen: (context) => const SplashScreen(),
        AppRoutes.loginScreen: (context) => const LoginScreen(),
        AppRoutes.signupScreen: (context) =>  SignUpScreen(),
        AppRoutes.homeScreen: (context) => const HomeScreen(),
        AppRoutes.lessonScreen: (context) =>const LessomScreen(),
        AppRoutes.welcomeScreen:(context) =>  WelcomeScreen(),
        // AppRoutes.lectureScreen: (context) => LectureScreen(),
        // AppRoutes.readingScreen: (context) => ReadingScreen(),
        // AppRoutes.listeningScreen:(context) => ListeningScreen(),
      };
}
