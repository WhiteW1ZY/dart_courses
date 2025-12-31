
import 'package:flutter/material.dart';

class TextChangerButton extends StatefulWidget {
  const TextChangerButton({super.key}); 

  @override 
  State<TextChangerButton> createState() => _TextChangerButtonState();
}

class _TextChangerButtonState extends State<TextChangerButton> { 
  
  String text = "Привет, Flutter!";
  bool isPushed = false;
  
  void putButton() {
    if(!isPushed) {
      isPushed = true;
      setState(() {
        text = "Вы нажали кнопку!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text),
        //RaisedButton считается устаревшей
        ElevatedButton(onPressed: () => putButton(), child: const Text("Нажми на меня!")) 
      ],
    );
  }
}