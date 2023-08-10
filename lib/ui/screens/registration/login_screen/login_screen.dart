import 'package:flutter/material.dart';
import 'package:just_english/ui/app_navigator/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              SizedBox(height: 100,),
              _inputField(context),
              _forgotPassword(context)
            ],
          ),
        ),
      )
      );
  }
}

_header(context){
  return Column(
    children: [
      Text("Tizimga kirish",
      style:TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold
      ),),
      Text("O'z ma'lumotlaringizni kiriring")
    ],
  );
}

_inputField(context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.blue.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.person)
        ),
      ),
      SizedBox(height: 10,),
      TextField(
        decoration: InputDecoration(
          hintText: 'Telefon raqamingizni kiriting',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.blue.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.password)
        ),
        obscureText: true,
      ),
      SizedBox(height: 10,),
      ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, AppRoutes.coursesScreen);
      },
       child: Text("Jo'natish",
       style: TextStyle(
        fontSize: 20,
        color: Colors.white
       ),
       ),
       style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        backgroundColor: Colors.blue,
        padding: EdgeInsets.symmetric(vertical: 16)
       ),
       )
    ],
  );
}

_forgotPassword(context){
  return TextButton(onPressed: (){
   
  },
   child: Text('Parolni unutdingizmi?'));
}