import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_english/ui/app_navigator/app_routes.dart';
import 'package:just_english/ui/resources/app_img.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){
            
          },
        ),
        actions: [
          IconButton(
          icon: Icon(Icons.settings,color: Colors.white,),
          onPressed: (){
            FocusScope.of(context).unfocus();
          },
        ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16,top: 25,right: 16),
        child: GestureDetector(
          onTap: (){

          },
          child: ListView(
            children: [
              //title
              Text("Profilni o'zgartirish",
              style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500
              ) ,),
              //avatar
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor
                        ),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0, 10)
        
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppImage.profile)
                          )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          ),
                      )
                      )
                  ],
                ),
              ),
              SizedBox(height: 35,),
              ProfileTexfield(),
              ProfileTexfield(),
              ProfileTexfield(),
              ProfileTexfield(),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: (){}, 
                    child: Text('Bekor qilish',
                    style: TextStyle(
                      letterSpacing: 2.2,
                      color: Colors.black,
                      fontSize: 14
                    ),
                    )
                    ),
                    OutlinedButton(
                    onPressed: (){}, 
                    child: Text('Saqlash',
                    style: TextStyle(
                      letterSpacing: 2.2,
                      color: Colors.black,
                      fontSize: 14
                    ),
                    )
                    ),
                    
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTexfield extends StatelessWidget {
  const ProfileTexfield({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: TextField(
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.only(bottom: 3),
          labelText: "To'liq ism familyangiz",
          hintText: "Kambarov Begzod",
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black
          )
        ),
      ),
    );
  }
}