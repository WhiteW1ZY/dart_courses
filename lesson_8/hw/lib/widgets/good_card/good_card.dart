import 'package:flutter/material.dart';
import 'package:hw/classes/parsers/date_time_parser/i_date_time_parser.dart';

class GoodCard extends StatelessWidget {
  final String title;
  final DateTime creatingDate;
  final IDateTimeParser dateTimeParser;

  static const double cardWidth = 195;

  const GoodCard({
    super.key,
    required this.title,
    required this.creatingDate,
    required this.dateTimeParser,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: cardWidth,
          height: 220,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 187, 222, 251),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            image: DecorationImage(
              image: NetworkImage(
                "https://cdn-sh1.vigbo.com/shops/48947/products/22146105/images/2-afea6bf75d1a72f1efd567cac9f1b90b.jpg?version=1",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: .fromARGB(255, 237, 233, 241),
            borderRadius: .vertical(bottom: .circular(10)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: .fromARGB(100, 0, 0, 0),
                blurRadius: 4,
                spreadRadius: -3,
                offset: Offset(0, 5),
              ),
            ],
          ),
          width: cardWidth,
          height: 40,
          child: Padding(
            padding: const .only(left: 10),
            child: Column(
              mainAxisAlignment: .spaceEvenly,
              crossAxisAlignment: .start,
              children: [
                Text(title, style: TextStyle(fontWeight: .bold, fontSize: 10)),
                Text(
                  dateTimeParser.toDisplayString(creatingDate),
                  style: const TextStyle(
                    fontWeight: .w100,
                    fontSize: 10,
                    color: .fromARGB(255, 169, 168, 169),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
