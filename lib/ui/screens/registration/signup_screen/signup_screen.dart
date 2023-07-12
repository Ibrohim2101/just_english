import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({
    super.key,
  });
  final firtNameController = TextEditingController();
  final lastnameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordAgainController = TextEditingController();

  Future register(String firstName, String lastName, String phoneNumber,
      String password, String passwordAgain) async {
    try {
      Response response = await post(
          Uri.parse(
              'https://ec31-84-54-84-38.ngrok-free.app/api/v1/user/register'),
          body: {
            "fname": firstName,
            "lname": lastName,
            "email": phoneNumber,
            "password": password,
            "password_confirmation": passwordAgain
          },
          headers: {
            'Accept': 'application/json',
          });

      print(response.statusCode);

      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 201) {
        print(data['data']['token']);
        print('Login successfully');
        return (data['data']['token']);
      } else {
        print('failed');
        print(data['message']);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _header(context),
              MyTextField(
                  controller: firtNameController,
                  icon: Icon(Icons.person),
                  hintText: 'Ismingizni kiriting',
                  obscureText: false),
              MyTextField(
                  controller: lastnameController,
                  icon: Icon(Icons.person),
                  hintText: 'Familyangizni kiriting',
                  obscureText: false),
              MyTextField(
                  controller: phoneNumberController,
                  icon: Icon(Icons.phone),
                  hintText: 'Telefon raqamingizni kiriting',
                  obscureText: false),
              MyTextField(
                  controller: passwordController,
                  icon: Icon(Icons.password),
                  hintText: 'Parolni kiriting',
                  obscureText: true),
              MyTextField(
                  controller: passwordAgainController,
                  icon: Icon(Icons.password),
                  hintText: 'Parolni qayta kiriting',
                  obscureText: true),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  register(
                      firtNameController.text.toString(),
                      lastnameController.text.toString(),
                      phoneNumberController.text.toString(),
                      passwordController.text.toString(),
                      passwordAgainController.text.toString());
                },
                child: Text(
                  "Jo'natish",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 16)),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Icon icon;
  const MyTextField(
      {super.key,
      this.controller,
      required this.hintText,
      required this.obscureText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.blue.withOpacity(0.1),
            filled: true,
            prefixIcon: icon),
      ),
    );
  }
}

_header(context) {
  return Column(
    children: [
      Text(
        "Registratsiyadan o'tin",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      Text("O'z ma'lumotlaringizni kiriring")
    ],
  );
}

// Future<Map<String,dynamic>> fetchData() async {
//   final response = await get (Uri.parse('https://ba0c-84-54-84-38.ngrok-free.app'));

//   if(response.statusCode == 200){
//     return jsonDecode(response.body);
//   }else{
//     throw Exception('failed');
//   }
// }


// _inputField(context){
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.stretch,
//     children: [
//       TextField(
//         decoration: InputDecoration(
//           hintText: 'Ismingizni kiriting',
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(15),
//             borderSide: BorderSide.none,
//           ),
//           fillColor: Colors.blue.withOpacity(0.1),
//           filled: true,
//           prefixIcon: Icon(Icons.person)
//         ),
//       ),
//       SizedBox(height: 10,),
//       TextField(
//         decoration: InputDecoration(
//           hintText: 'Familyangizni kiriting',
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(15),
//             borderSide: BorderSide.none,
//           ),
//           fillColor: Colors.blue.withOpacity(0.1),
//           filled: true,
//           prefixIcon: Icon(Icons.person)
//         ),
//         // obscureText: true,
//       ),
//       SizedBox(height: 10,),
//       ElevatedButton(onPressed: (){
//         Navigator.pushNamed(context,AppRoutes.loginScreen);
//       },
//        child: Text("Jo'natish",
//        style: TextStyle(
//         fontSize: 20,
//         color: Colors.white
//        ),
//        ),
//        style: ElevatedButton.styleFrom(
//         shape: StadiumBorder(),
//         backgroundColor: Colors.blue,
//         padding: EdgeInsets.symmetric(vertical: 16)
//        ),
//        )
//     ],
//   );
// }
