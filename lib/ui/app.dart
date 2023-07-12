import 'package:flutter/material.dart';
import 'package:just_english/ui/app_navigator/app_navigator.dart';

class JustEnglish extends StatelessWidget {
  const JustEnglish({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: AppNavigator.initialRoute,
      routes: AppNavigator.routes,
    );
  }
}
