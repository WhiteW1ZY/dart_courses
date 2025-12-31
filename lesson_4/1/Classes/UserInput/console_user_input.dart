import 'dart:io'; 
import '../Abstract/user_input.dart';

class ConsoleUserInput extends UserInput{ 
  @override
  String getValue() => stdin.readLineSync() ?? "";
}