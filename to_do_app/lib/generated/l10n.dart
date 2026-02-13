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

  /// `Некорректная длинна`
  String get invalid_length {
    return Intl.message(
      'Некорректная длинна',
      name: 'invalid_length',
      desc: '',
      args: [],
    );
  }

  /// `Некорректный формат`
  String get invalid_format {
    return Intl.message(
      'Некорректный формат',
      name: 'invalid_format',
      desc: '',
      args: [],
    );
  }

  /// `Не может быть пустым`
  String get cannot_be_empty {
    return Intl.message(
      'Не может быть пустым',
      name: 'cannot_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `Отправить`
  String get submit {
    return Intl.message('Отправить', name: 'submit', desc: '', args: []);
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
  String get sign_up {
    return Intl.message(
      'Зарегистрироваться',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get sign_in {
    return Intl.message('Войти', name: 'sign_in', desc: '', args: []);
  }

  /// `Выйти`
  String get sign_out {
    return Intl.message('Выйти', name: 'sign_out', desc: '', args: []);
  }

  /// `Пароль`
  String get password {
    return Intl.message('Пароль', name: 'password', desc: '', args: []);
  }

  /// `Логин`
  String get login {
    return Intl.message('Логин', name: 'login', desc: '', args: []);
  }

  /// `Добро пожаловать!`
  String get welcome {
    return Intl.message(
      'Добро пожаловать!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Нам тебя очень не хватало!`
  String get welcome_back_message {
    return Intl.message(
      'Нам тебя очень не хватало!',
      name: 'welcome_back_message',
      desc: '',
      args: [],
    );
  }

  /// `Будет приятно познакомиться!`
  String get will_be_nice_to_meet_you {
    return Intl.message(
      'Будет приятно познакомиться!',
      name: 'will_be_nice_to_meet_you',
      desc: '',
      args: [],
    );
  }

  /// `Создайте аккаунт!`
  String get create_an_account {
    return Intl.message(
      'Создайте аккаунт!',
      name: 'create_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Что-то пошло не так..`
  String get something_went_wrong {
    return Intl.message(
      'Что-то пошло не так..',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Коллекция пока пуста.. \nДобавьте первую запись!`
  String get collection_is_empty_yet_add_fist_node {
    return Intl.message(
      'Коллекция пока пуста.. \nДобавьте первую запись!',
      name: 'collection_is_empty_yet_add_fist_node',
      desc: '',
      args: [],
    );
  }

  /// `Мои задачи`
  String get my_todos {
    return Intl.message('Мои задачи', name: 'my_todos', desc: '', args: []);
  }

  /// `Добавить задачу`
  String get add_todo {
    return Intl.message(
      'Добавить задачу',
      name: 'add_todo',
      desc: '',
      args: [],
    );
  }

  /// `Редактировать задачу`
  String get edit_task {
    return Intl.message(
      'Редактировать задачу',
      name: 'edit_task',
      desc: '',
      args: [],
    );
  }

  /// `Заголовок`
  String get title {
    return Intl.message('Заголовок', name: 'title', desc: '', args: []);
  }

  /// `Описание`
  String get description {
    return Intl.message('Описание', name: 'description', desc: '', args: []);
  }

  /// `Добавить`
  String get add {
    return Intl.message('Добавить', name: 'add', desc: '', args: []);
  }

  /// `Задача добавлена успешно!`
  String get task_added_successfully {
    return Intl.message(
      'Задача добавлена успешно!',
      name: 'task_added_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось добавить задание..`
  String get cannot_add_task {
    return Intl.message(
      'Не удалось добавить задание..',
      name: 'cannot_add_task',
      desc: '',
      args: [],
    );
  }

  /// `Задача обновлена успешно!`
  String get task_eddited_successfully {
    return Intl.message(
      'Задача обновлена успешно!',
      name: 'task_eddited_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось обновить задание..`
  String get cannot_edit_task {
    return Intl.message(
      'Не удалось обновить задание..',
      name: 'cannot_edit_task',
      desc: '',
      args: [],
    );
  }

  /// `Выполнено`
  String get completed {
    return Intl.message('Выполнено', name: 'completed', desc: '', args: []);
  }

  /// `Редактировать`
  String get edit {
    return Intl.message('Редактировать', name: 'edit', desc: '', args: []);
  }

  /// `Задача выполнена?`
  String get is_task_completed {
    return Intl.message(
      'Задача выполнена?',
      name: 'is_task_completed',
      desc: '',
      args: [],
    );
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
