import 'package:flutter/material.dart';
import 'package:hw/classes/generators/i_date_time_generator.dart';
import 'package:hw/screens/home_page.dart';
import 'package:provider/provider.dart';

class Application extends StatelessWidget {
  const Application({super.key});
  @override
  Widget build(BuildContext context) {
    final dateTimeGenerator = Provider.of<IDateTimeGenerator>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: HomePage(dateTimeGenerator: dateTimeGenerator),
    );
  }
}
