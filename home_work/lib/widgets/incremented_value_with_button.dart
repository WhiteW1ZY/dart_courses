
import 'package:flutter/material.dart';
import 'package:home_work/widgets/text_widget.dart';
 
class IncrementedValueWithButton extends StatefulWidget { 
  const IncrementedValueWithButton({super.key});

  @override
  State<IncrementedValueWithButton> createState() => _IncrementedValueWithButtonState();
}

class _IncrementedValueWithButtonState extends State<IncrementedValueWithButton> {
  
  int counter = 0;
  
  void incrementCounter() { 
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) { 
    return Column(
      children: [
        TextWidget(text: "Количество нажатий на кнопку: $counter"),
        ElevatedButton(
          onPressed: () => incrementCounter(),
          child: const TextWidget(text: "Кнопка"),
        ),
      ],
    );
  }
}