import 'package:flutter/material.dart';
import 'package:hw/classes/generators/date_time_generator/date_time_generator.dart';
import 'package:hw/classes/generators/i_date_time_generator.dart';
import 'package:hw/classes/parsers/date_time_parser/date_time_parser.dart';
import 'package:hw/classes/parsers/date_time_parser/i_date_time_parser.dart';
import 'package:hw/widgets/application.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<IDateTimeParser>(create: (_) => DateTimeParser()),
        Provider<IDateTimeGenerator>(create: (_) => DateTimeGenerator()),
      ],
      child: const Application(),
    ),
  );
}
