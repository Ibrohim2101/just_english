import 'package:flutter/material.dart';
import 'package:just_english/ui/theme/app_colors/app_colors.dart';
import 'package:just_english/ui/widgets/home_page_list/home_page_list.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                 const Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
            const Text(
              'Hi,Jared!',
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '21 Yanvar 2023yil',
              style: TextStyle(color: Colors.blue[200]),
            ),
              ],
            ),
          ),
          // Hi  jaredConta
          const SizedBox(
            height: 25,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)),
              color: Colors.grey[100],
            ),
            padding: const EdgeInsets.all(25),
            // color: Colors.grey[100],
            child: Center(
              child: Column(
                children: [
                  // exercise heading
                  Text(
                    'Topshiriqlar',
                    style: TextStyle(
                        fontSize: 20,
                        height: 24 / 20,
                        fontWeight: FontWeight.bold),
                  ),
                  // exercise list
                  Expanded(child: HomePageList())
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}