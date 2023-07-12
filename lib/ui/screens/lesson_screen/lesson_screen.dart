import 'package:flutter/material.dart';
import 'package:just_english/ui/theme/app_colors/app_colors.dart';

class LessomScreen extends StatelessWidget {
  const LessomScreen({super.key});

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
      body: SafeArea(
        child:Container(
          color: Colors.grey[100],
          padding:const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.textColor
                ),
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      decoration:const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft:Radius.circular(12),
                          bottomLeft: Radius.circular(12)
                          )
                      ),
                    ),
                    Expanded(
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('Leksiya'),
                            subtitle: Text('Olmosh nima,turlari'),
                            trailing: Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                activeColor: Colors.blue[800],
                                shape: const CircleBorder(),
                                value: true,
                                onChanged:(value)=>print(value),
                              ),
                            ),
                          )
                        ],
                      ),
                      ),
                      )
                  ],
                ),
              )
            ],
          ),
        )),
    );
  }
}