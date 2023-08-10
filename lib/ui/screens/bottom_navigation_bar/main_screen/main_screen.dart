import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_english/ui/theme/app_colors/app_colors.dart';
import 'package:just_english/ui/widgets/home_page_list/home_page_list.dart';



class MainScreen extends StatelessWidget {
 
  @override
  List<Color> Clrc =[
    Color.fromARGB(255, 246, 111, 58),
    Color.fromARGB(255, 36, 131, 233),
    Color.fromARGB(255, 63, 208, 143),
  ];
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40,left: 15,right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2
                    ),
                  ]
                ),
                child: Icon(CupertinoIcons.cart,size: 28,),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFD4ECF7),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2
                    ),
                  ]
                ),
                child: Icon(Icons.settings,size: 28,),
              ),
            ],
          ),
          //title
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Salom Begzod',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
              Text('Just English bilan ingilistilini tez va oson organing',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45
              ),
              )
            ],
          ),
            // reklama
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(int i = 0;i < 3;i++)
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(left: 15),
                    width: MediaQuery.of(context).size.width/1.5,
                    height: MediaQuery.of(context).size.height/5.5,
                    decoration: BoxDecoration(
                      color: Clrc[i],
                      borderRadius: BorderRadius.circular(10)
                     ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child:
                         Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Kurslarni chegirma orqali sotvoling',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22
                        ),
                        ),
                        Container(
                          width: 120,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text('Sotib oling',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        )
                          ],
                        )
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Darslar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
            ),
            Expanded(
              child: Container(
                // color: Colors.grey[100],
                child: HomePageList()
                )
              )
            
        ],
      ),
    );
  }
}

