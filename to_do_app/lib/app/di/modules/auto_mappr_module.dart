import 'package:injectable/injectable.dart';
import 'package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart';
import 'package:to_do_app/data/mappers/user_mappr.dart/auth_mappr.dart';

@module
abstract class AutoMapprModule {
  @singleton
  TodoMappr get todoMappr => TodoMappr();
  @singleton
  AuthMappr get authMappr => AuthMappr();
}
