
import 'package:flutter/material.dart';
import 'package:home_work/widgets/incremented_value_with_button.dart';
import 'package:home_work/widgets/text_changer_button.dart'; 

class ApplicationHomePage extends StatelessWidget {
  const ApplicationHomePage({super.key});  

  void _incrementCounter() {
    print("Кнопка нажата!"); 
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, 
        title: Text("Моё первое приложение"),
      ),
      body: Center( 
        child: Column( 
          mainAxisAlignment: .center,
          children: [  
            const TextChangerButton(),
            const SizedBox(height: 20),
            const IncrementedValueWithButton(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}