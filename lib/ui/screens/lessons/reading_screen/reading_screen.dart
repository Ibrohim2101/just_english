import 'package:flutter/material.dart';

class ReadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Reading',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Task: IELTS Reading',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Read the following passage and choose the correct answer from the options provided:',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 24),
                Text(
                  'Passage:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam accumsan ex in purus tristique tincidunt. Sed non malesuada ex, id interdum nulla. Phasellus faucibus, urna eu condimentum finibus, risus metus euismod neque, vitae posuere tortor velit eu enim. Donec pulvinar tellus ut elit finibus pulvinar. Nullam sed neque nec turpis condimentum dignissim sed ut enim. Nullam vel lectus et risus aliquam commodo. Proin sit amet nulla sed velit lacinia laoreet ut eu dui. Mauris consectetur metus eu mauris efficitur, id pretium orci aliquet. Integer convallis mi in turpis hendrerit, in faucibus tortor consectetur. Sed efficitur consectetur quam in vulputate. Sed auctor sem nisl, ut vestibulum enim bibendum sit amet.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 24),
                Text(
                  'Question:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'What is the main purpose of the passage?',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  'A. To provide information about Lorem ipsum dolor sit amet\n'
                  'B. To discuss the importance of condimentum finibus\n'
                  'C. To describe the process of efficitur consectetur\n'
                  'D. To highlight the benefits of lacinia laoreet',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
