import 'package:flutter/material.dart';
import 'package:just_english/ui/theme/app_colors/app_colors.dart';
import 'package:translator/translator.dart';

class TranslaterScreen extends StatefulWidget {
  const TranslaterScreen({super.key});

  @override
  State<TranslaterScreen> createState() => _TranslaterScreenState();
}

class _TranslaterScreenState extends State<TranslaterScreen> {
  String translated = 'Translation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translate page'),
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Card(
        margin: const EdgeInsets.all(12),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            const Text("Uzb"),
            SizedBox(height: 8,),
            TextField(
              style:TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold
              ),
              decoration: InputDecoration(
                hintText: "So'zni kiriting",
              ),
              onChanged: (text) async{
                const apiKey = '';
                const to = 'uz';
                final url = Uri.parse('');
                // final response = await http.post(url);
                final  translation = await text.translate(
                  from: 'en',
                  to: 'uz'
                );
                setState(() {
                  translated = translation.text;
                });
              },
            ),
            // const Divider(height: 22,)
            Text('tarjima',
            style:const TextStyle(
              fontSize: 36,
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold
            ),
            )
          ],
        ),
      ),
      );
  }
}