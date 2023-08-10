import 'package:flutter/material.dart';
import 'package:just_english/ui/screens/registration/signup_screen/signup_screen.dart';

class SignUpTwoScreen extends StatelessWidget {
  const SignUpTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _header(),
                  MyTextField(
                    hintText: 'Kelgan kodni kiriting', 
                    obscureText: false, 
                    icon: Icon(Icons.numbers)
                    ),
                  _buttonSendAgain()
                ],
              )
            ],
          ),
        ),
      ) 
      );
  }
}

_header(){
  return Column(
    children: [
      Text(
        "Registratsiyadan o'tin",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      Text("Kelgan kodni kiriting"),
      Text('Sizning telefon raqamingiz')
    ],
  );
}

_buttonSendAgain(){
  return TextButton(onPressed: (){}, child: Text("Ko'dni qayta jo'natish"));
}