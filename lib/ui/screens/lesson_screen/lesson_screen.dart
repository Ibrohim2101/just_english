import 'dart:math';

import 'package:flutter/material.dart';
import 'package:just_english/ui/app_navigator/app_routes.dart';
import 'package:just_english/ui/resources/app_img.dart';
import 'package:just_english/ui/theme/app_colors/app_colors.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1-dars',
        style: TextStyle(
          color: AppColors.textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: AppColors.backgroundColor,
      ),
      body: ListView.separated(
        itemBuilder: (context,index)=>LessonUi(), 
        separatorBuilder: (context,index)=>SizedBox(height: 10,), 
        itemCount: 5
        )
        );
  }
}

class LessonUi extends StatefulWidget {
  const LessonUi({super.key});

  @override
  State<LessonUi> createState() => _LessonUiState();
}

class _LessonUiState extends State<LessonUi> {

  getRandomColor(){
    Random random = Random();
    return backgroundColors[random.nextInt(backgroundColors.length)];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AppRoutes.quiz);
      },
      child: Card(
      // Define the shape of the card
      color: getRandomColor(),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
      ),
      // Define how the card's content should be clipped
      clipBehavior: Clip.antiAliasWithSaveLayer,
      // Define the child widget of the card
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Add padding around the row widget
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Add an image widget to display an image
              Image.asset(
                AppImage.reading,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              // Add some spacing between the image and the text
              Container(width: 20),
              // Add an expanded widget to take up the remaining horizontal space
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Add some spacing between the top of the card and the title
                    Container(height: 5),
                    // Add a title widget
                    Text(
                      "Cards Title 1",
                      style: TextStyle(
                        color: Colors.grey[800]
                      )
                    ),
                    // Add some spacing between the title and the subtitle
                    Container(height: 5),
                    // Add a subtitle widget
                    Text(
                      "Sub title",
                      style: TextStyle(
                        color: Colors.grey[500]
                      )
                    ),
                    // Add some spacing between the subtitle and the text
                    Container(height: 10),
                    // Add a text widget to display some text
                    Text(
                      'csacsacsac',
                      maxLines: 2,
                      style: TextStyle()
                    ),
                  ],
                ),
              ),
              Icon(Icons.check)
            ],
          ),
        ),
      ],
      ),
    ),
    );
}
}

// Container(
//       padding: EdgeInsets.all(10),
//       margin: EdgeInsets.all(5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: Colors.green,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             children: [
//               Text(
//                 '1-dars Olmoshlar',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                   height: 1.5
//                 ),
//               ),
//               Text(
//                 'vds;vms;dkv;sdkv;sdkv;',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.normal,
//                   fontSize: 14,
//                   height: 1.5
//                 ),
//               ),
//             ],
//           ),
//           Icon(Icons.check)
//         ],
//       )
//     );