// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(value) => "ID: ${value}";

  static String m1(value1, value2) =>
      "Правильных ответов: ${value1} из ${value2}";

  static String m2(value) => "Количество правильных ответов: ${value}";

  static String m3(value) => "Ошибка: ${value}";

  static String m4(value) => "Количество вопросов: ${value}";

  static String m5(value1, value2) => "Вопрос ${value1} из ${value2}";

  static String m6(value) => "Тема тестирования: ${value}";

  static String m7(value) => "Ваша почта: ${value}";

  static String m8(value) => "Ваша почта верифицирована: ${value}";

  static String m9(value) => "Ваш ID: ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "ID": m0,
    "authorization": MessageLookupByLibrary.simpleMessage("Авторизация"),
    "category": MessageLookupByLibrary.simpleMessage("Категории"),
    "category_is_empty": MessageLookupByLibrary.simpleMessage(
      "Список категорий пуст..",
    ),
    "come_up_email_and_password": MessageLookupByLibrary.simpleMessage(
      "Придумайте email и пароль для входа",
    ),
    "correct_answers": m1,
    "correct_answers_count": m2,
    "email": MessageLookupByLibrary.simpleMessage("Почта"),
    "email_not_found": MessageLookupByLibrary.simpleMessage("Почта не найдена"),
    "error": m3,
    "go_menu": MessageLookupByLibrary.simpleMessage("Перейти в меню"),
    "input_email_and_password": MessageLookupByLibrary.simpleMessage(
      "Введите ваш email и пароль для входа",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("Загрузка.."),
    "login": MessageLookupByLibrary.simpleMessage("Войти"),
    "no": MessageLookupByLibrary.simpleMessage("Нет"),
    "non_valid_email_message": MessageLookupByLibrary.simpleMessage(
      "Электронная почта некорректна",
    ),
    "non_valid_password_message": MessageLookupByLibrary.simpleMessage(
      "Пароль не может содержать менее 6 символов",
    ),
    "or": MessageLookupByLibrary.simpleMessage("или"),
    "password": MessageLookupByLibrary.simpleMessage("Пароль"),
    "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
    "question_count": m4,
    "questions": m5,
    "questions_is_empty": MessageLookupByLibrary.simpleMessage(
      "Список вопросов пуст..",
    ),
    "quiz": MessageLookupByLibrary.simpleMessage("Викторина"),
    "quiz_app": MessageLookupByLibrary.simpleMessage("QuizApp"),
    "quiz_theme": m6,
    "records": MessageLookupByLibrary.simpleMessage("Рекорды"),
    "records_is_empty": MessageLookupByLibrary.simpleMessage(
      "Рекорды не установлены :)",
    ),
    "register": MessageLookupByLibrary.simpleMessage("Зарегистрироваться"),
    "registration": MessageLookupByLibrary.simpleMessage("Регистрация"),
    "saving": MessageLookupByLibrary.simpleMessage("Сохранение.."),
    "sing_out": MessageLookupByLibrary.simpleMessage("Выйти из аккаунта"),
    "start": MessageLookupByLibrary.simpleMessage("Начать"),
    "unknown_error": MessageLookupByLibrary.simpleMessage("Неизвестная ошибка"),
    "user_not_found": MessageLookupByLibrary.simpleMessage(
      "Пользователь не найден",
    ),
    "welcome": MessageLookupByLibrary.simpleMessage("Добро пожаловать"),
    "welcome_home_page": MessageLookupByLibrary.simpleMessage(
      "Рад снова видеть тебя",
    ),
    "willBeFriends": MessageLookupByLibrary.simpleMessage(
      "Мы обязательно подружимся",
    ),
    "yes": MessageLookupByLibrary.simpleMessage("Да"),
    "you_passed_quiz": MessageLookupByLibrary.simpleMessage(
      "Вы ответили на все вопросы!",
    ),
    "your_email": m7,
    "your_email_verified": m8,
    "your_id": m9,
  };
}
