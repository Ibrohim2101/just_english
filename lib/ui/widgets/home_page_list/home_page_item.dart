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

        //Color(0XFFD4ECF7) darsga primerni rang
        decoration: BoxDecoration(
            color:  Colors.grey[100],
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      padding: EdgeInsets.all(16),
                      color: Colors.red,
                      child: Icon(
                        Icons.book,
                        color: AppColors.textColor,
                      )),
                ),
                const SizedBox(
                  width: 12,
                ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1-dars Olmoshlar',
                      style: const TextStyle(
                          fontSize: 18,
                          height: 18 / 16,
                          fontWeight: FontWeight.bold),
                    ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.speaker_notes,color: Colors.grey,),
                          Text('Leksiya',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16
                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.menu_book,color: Colors.grey,),
                          Text('Reading',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16
                          ),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.headset,color: Colors.grey,),
                          Text('Listening',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16
                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.assignment,color: Colors.grey,),
                          Text('Test',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16
                          ),),
                        ],
                      ),
                      
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
