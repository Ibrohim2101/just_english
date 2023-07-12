import 'package:flutter/material.dart';
import 'package:just_english/ui/app_navigator/app_routes.dart';
import 'package:just_english/ui/theme/app_colors/app_colors.dart';

class HomePageListItem extends StatelessWidget {
  const HomePageListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.lessonScreen);
      },
      child: Container(
        padding: EdgeInsets.all(16),
        constraints: const BoxConstraints(
          minHeight: 117,
        ),
        decoration: BoxDecoration(
            color: AppColors.textColor,
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: Offset(0, 1))
            ],
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      padding: EdgeInsets.all(16),
                      color: Colors.orange,
                      child: Icon(
                        Icons.book,
                        color: AppColors.textColor,
                      )),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1-dars',
                      style: const TextStyle(
                          fontSize: 16,
                          height: 18 / 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                   
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: Text(
                    //         'Olmosh,2 ta reading bitta listening lugat va test',
                    //         overflow: TextOverflow.fade,
                    //         maxLines: 2,
                    //         softWrap: false,
                    //         style: const TextStyle(
                    //             color: Colors.grey, fontSize: 14, height: 16 / 14),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // LinearPercentIndicator(
                    //   animation: true,
                    //   animationDuration: 1000,
                    //   lineHeight: 40,
                    //   percent: 1,
                    //   progressColor: Colors.blue,
                    //   backgroundColor: AppColors.textColor,
                    // )
                  ],
                ),
              ],
            ),
            Icon(Icons.check)
          ],
        ),
      ),
    );
  }
}
