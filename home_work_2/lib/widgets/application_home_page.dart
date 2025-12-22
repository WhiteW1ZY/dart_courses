
import 'package:flutter/material.dart'; 


import 'package:home_work_2/widgets/inherited_counter.dart';

class ApplicationHomePage extends StatefulWidget {
  const ApplicationHomePage({super.key});

  @override
  State<ApplicationHomePage> createState() => _ApplicationHomePageState(); 
}

class _ApplicationHomePageState extends State<ApplicationHomePage> {
  int counter = 0;

  void increaseCounter() {
    setState(() {
      counter++;    
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InheritedCounter(
        counter: counter, 
        increaseCounterCallback: increaseCounter,
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Builder(builder: (BuildContext innerContext) => Text("${InheritedCounter.of(innerContext).counter}")),
              Builder(builder: (BuildContext innerContext) => 
                ElevatedButton(
                  onPressed: InheritedCounter.of(innerContext).increaseCounterCallback, 
                  child: const Text("Нажми на меня")
                )
              )
            ],
          ),
          )
      )
    );
  }
}