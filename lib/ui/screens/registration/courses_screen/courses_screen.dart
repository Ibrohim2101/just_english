import 'package:flutter/material.dart';
import 'package:just_english/ui/app_navigator/app_routes.dart';
import 'package:just_english/ui/resources/app_img.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        leading: Container(
          padding: EdgeInsets.all(8.0),
          child: FlutterLogo(size: 36.0,),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImage.logo,
            width: 220,
            height: 220,),
            Text('Just English',
            style: TextStyle(
              fontSize: 36,
              color: Colors.blue
            ),
            ),
            CourseCard(
              title: 'Basic English',
              description: 'Learn the fundamentals of English language.',
            ),
            CourseCard(
              title: 'IELTS',
              description: 'Prepare for the International English Language Testing System (IELTS) exam.',
            ),
          ],
        ),
      ),
    );
  }
}

class CourseCard extends StatefulWidget {
  final String title;
  final String description;

  const CourseCard({required this.title, required this.description});

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
                  onPressed: () {
                    setState(() {
                      _expanded = !_expanded;
                      Navigator.pushNamed(context, AppRoutes.homeScreen);
                    });
                  },
                ),
              ],
            ),
            if (_expanded)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  widget.description,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
