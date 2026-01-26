// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:task_2/entities/contact.dart' as _i5;
import 'package:task_2/screens/contact_screen.dart' as _i1;
import 'package:task_2/screens/main_screen.dart' as _i2;

/// generated route for
/// [_i1.ContactScreen]
class ContactRoute extends _i3.PageRouteInfo<ContactRouteArgs> {
  ContactRoute({
    _i4.Key? key,
    required _i5.Contact contact,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         ContactRoute.name,
         args: ContactRouteArgs(key: key, contact: contact),
         initialChildren: children,
       );

  static const String name = 'ContactRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ContactRouteArgs>();
      return _i1.ContactScreen(key: args.key, contact: args.contact);
    },
  );
}

class ContactRouteArgs {
  const ContactRouteArgs({this.key, required this.contact});

  final _i4.Key? key;

  final _i5.Contact contact;

  @override
  String toString() {
    return 'ContactRouteArgs{key: $key, contact: $contact}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ContactRouteArgs) return false;
    return key == other.key && contact == other.contact;
  }

  @override
  int get hashCode => key.hashCode ^ contact.hashCode;
}

/// generated route for
/// [_i2.MainScreen]
class MainRoute extends _i3.PageRouteInfo<void> {
  const MainRoute({List<_i3.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainScreen();
    },
  );
}
