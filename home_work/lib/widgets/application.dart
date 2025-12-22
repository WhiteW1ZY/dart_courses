
import 'package:flutter/material.dart';
import 'package:home_work/widgets/application_home_page.dart';

class Application extends StatelessWidget {
  const Application({super.key}); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ApplicationHomePage(),
    );
  }
} 