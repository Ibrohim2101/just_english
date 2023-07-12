import 'package:flutter/material.dart';
import 'package:just_english/ui/theme/app_colors/app_colors.dart';

class LectureScreen extends StatelessWidget {
  final String lectureTitle = 'English Lecture';
  final String titleText = 'What is English?';
  final String bodyText =
      'English is an international language spoken by millions of people around the world. It is the primary language of many countries and is commonly used for communication, business, education, and entertainment.';
  final String pronounsTitle = 'Pronouns:';
  final String pronounsText =
      'Pronouns are words used in place of nouns. They help avoid repetition and make sentences less cumbersome. Examples of pronouns include: \n\n - He\n - She\n - It\n\nThese pronouns are used to refer to people, animals, objects, or things, respectively.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          lectureTitle,
          style: TextStyle(
            color: AppColors.textColor,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleText,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              bodyText,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Text(
              pronounsTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              pronounsText,
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  // Continue button logic goes here
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  primary: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
