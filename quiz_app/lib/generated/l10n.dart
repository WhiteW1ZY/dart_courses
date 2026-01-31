// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Авторизация`
  String get authorization {
    return Intl.message(
      'Авторизация',
      name: 'authorization',
      desc: '',
      args: [],
    );
  }

  /// `Добро пожаловать`
  String get welcome {
    return Intl.message(
      'Добро пожаловать',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Мы обязательно подружимся`
  String get willBeFriends {
    return Intl.message(
      'Мы обязательно подружимся',
      name: 'willBeFriends',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get registration {
    return Intl.message(
      'Регистрация',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрироваться`
  String get register {
    return Intl.message(
      'Зарегистрироваться',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Почта`
  String get email {
    return Intl.message('Почта', name: 'email', desc: '', args: []);
  }

  /// `Пароль`
  String get password {
    return Intl.message('Пароль', name: 'password', desc: '', args: []);
  }

  /// `Войти`
  String get login {
    return Intl.message('Войти', name: 'login', desc: '', args: []);
  }

  /// `Пароль не может содержать менее 6 символов`
  String get non_valid_password_message {
    return Intl.message(
      'Пароль не может содержать менее 6 символов',
      name: 'non_valid_password_message',
      desc: '',
      args: [],
    );
  }

  /// `Электронная почта некорректна`
  String get non_valid_email_message {
    return Intl.message(
      'Электронная почта некорректна',
      name: 'non_valid_email_message',
      desc: '',
      args: [],
    );
  }

  /// `или`
  String get or {
    return Intl.message('или', name: 'or', desc: '', args: []);
  }

  /// `Введите ваш email и пароль для входа`
  String get input_email_and_password {
    return Intl.message(
      'Введите ваш email и пароль для входа',
      name: 'input_email_and_password',
      desc: '',
      args: [],
    );
  }

  /// `Придумайте email и пароль для входа`
  String get come_up_email_and_password {
    return Intl.message(
      'Придумайте email и пароль для входа',
      name: 'come_up_email_and_password',
      desc: '',
      args: [],
    );
  }

  /// `QuizApp`
  String get quiz_app {
    return Intl.message('QuizApp', name: 'quiz_app', desc: '', args: []);
  }

  /// `Рад снова видеть тебя`
  String get welcome_home_page {
    return Intl.message(
      'Рад снова видеть тебя',
      name: 'welcome_home_page',
      desc: '',
      args: [],
    );
  }

  /// `Выйти из аккаунта`
  String get sing_out {
    return Intl.message(
      'Выйти из аккаунта',
      name: 'sing_out',
      desc: '',
      args: [],
    );
  }

  /// `Начать`
  String get start {
    return Intl.message('Начать', name: 'start', desc: '', args: []);
  }

  /// `Профиль`
  String get profile {
    return Intl.message('Профиль', name: 'profile', desc: '', args: []);
  }

  /// `Рекорды`
  String get records {
    return Intl.message('Рекорды', name: 'records', desc: '', args: []);
  }

  /// `Пользователь не найден`
  String get user_not_found {
    return Intl.message(
      'Пользователь не найден',
      name: 'user_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Ваш ID: {value}`
  String your_id(Object value) {
    return Intl.message(
      'Ваш ID: $value',
      name: 'your_id',
      desc: '',
      args: [value],
    );
  }

  /// `Ваша почта: {value}`
  String your_email(Object value) {
    return Intl.message(
      'Ваша почта: $value',
      name: 'your_email',
      desc: '',
      args: [value],
    );
  }

  /// `Ваша почта верифицирована: {value}`
  String your_email_verified(Object value) {
    return Intl.message(
      'Ваша почта верифицирована: $value',
      name: 'your_email_verified',
      desc: '',
      args: [value],
    );
  }

  /// `Да`
  String get yes {
    return Intl.message('Да', name: 'yes', desc: '', args: []);
  }

  /// `Нет`
  String get no {
    return Intl.message('Нет', name: 'no', desc: '', args: []);
  }

  /// `Категории`
  String get category {
    return Intl.message('Категории', name: 'category', desc: '', args: []);
  }

  /// `Загрузка..`
  String get loading {
    return Intl.message('Загрузка..', name: 'loading', desc: '', args: []);
  }

  /// `Ошибка: {value}`
  String error(Object value) {
    return Intl.message(
      'Ошибка: $value',
      name: 'error',
      desc: '',
      args: [value],
    );
  }

  /// `Почта не найдена`
  String get email_not_found {
    return Intl.message(
      'Почта не найдена',
      name: 'email_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Неизвестная ошибка`
  String get unknown_error {
    return Intl.message(
      'Неизвестная ошибка',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `Список категорий пуст..`
  String get category_is_empty {
    return Intl.message(
      'Список категорий пуст..',
      name: 'category_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Список вопросов пуст..`
  String get questions_is_empty {
    return Intl.message(
      'Список вопросов пуст..',
      name: 'questions_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Викторина`
  String get quiz {
    return Intl.message('Викторина', name: 'quiz', desc: '', args: []);
  }

  /// `Вопрос {value1} из {value2}`
  String questions(Object value1, Object value2) {
    return Intl.message(
      'Вопрос $value1 из $value2',
      name: 'questions',
      desc: '',
      args: [value1, value2],
    );
  }

  /// `Вы ответили на все вопросы!`
  String get you_passed_quiz {
    return Intl.message(
      'Вы ответили на все вопросы!',
      name: 'you_passed_quiz',
      desc: '',
      args: [],
    );
  }

  /// `Количество правильных ответов: {value}`
  String correct_answers_count(Object value) {
    return Intl.message(
      'Количество правильных ответов: $value',
      name: 'correct_answers_count',
      desc: '',
      args: [value],
    );
  }

  /// `Количество вопросов: {value}`
  String question_count(Object value) {
    return Intl.message(
      'Количество вопросов: $value',
      name: 'question_count',
      desc: '',
      args: [value],
    );
  }

  /// `Тема тестирования: {value}`
  String quiz_theme(Object value) {
    return Intl.message(
      'Тема тестирования: $value',
      name: 'quiz_theme',
      desc: '',
      args: [value],
    );
  }

  /// `Перейти в меню`
  String get go_menu {
    return Intl.message('Перейти в меню', name: 'go_menu', desc: '', args: []);
  }

  /// `Сохранение..`
  String get saving {
    return Intl.message('Сохранение..', name: 'saving', desc: '', args: []);
  }

  /// `Рекорды не установлены :)`
  String get records_is_empty {
    return Intl.message(
      'Рекорды не установлены :)',
      name: 'records_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Правильных ответов: {value1} из {value2}`
  String correct_answers(Object value1, Object value2) {
    return Intl.message(
      'Правильных ответов: $value1 из $value2',
      name: 'correct_answers',
      desc: '',
      args: [value1, value2],
    );
  }

  /// `ID: {value}`
  String ID(Object value) {
    return Intl.message('ID: $value', name: 'ID', desc: '', args: [value]);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'ru')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
