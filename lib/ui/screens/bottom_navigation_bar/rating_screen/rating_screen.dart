import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_english/ui/resources/app_img.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){
            
          },
        ),
          title: Text("Leaderboard",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage(AppImage.rank))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rank',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('Score',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Expanded(child:LeaderboardList())
          ],
        ),
      ),
    );
}

}

class LeaderboardList extends StatelessWidget {
  const LeaderboardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: ListView.separated(
        itemBuilder: (context,i)=>LeaderboardItem(), 
        separatorBuilder: (context,i)=>SizedBox(height: 10,), 
        itemCount: 10),
    );
  }
}

class LeaderboardItem extends StatelessWidget {
  const LeaderboardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('1',style: TextStyle(
                fontSize: 16
              ),),
              SizedBox(width: 5,),
              CircleAvatar(
                child: Text(
                  'B',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.blue,
              ),
              SizedBox(width: 10),
              Text(
                'Begzod',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Text(
            '300',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
