import 'package:flutter/material.dart';
import 'package:to_do_app/generated/l10n.dart';

extension ContextExtensions on BuildContext {
  S get glossary => S.of(this);
  ThemeData get theme => Theme.of(this);
}
