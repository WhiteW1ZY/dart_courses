import 'package:flutter/material.dart';
import 'package:hw/classes/generators/i_date_time_generator.dart';
import 'package:hw/classes/parsers/date_time_parser/i_date_time_parser.dart';
import 'package:hw/widgets/good_card/good_card.dart';
import 'package:hw/widgets/header.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final IDateTimeGenerator dateTimeGenerator;
  const HomePage({super.key, required this.dateTimeGenerator});

  @override
  Widget build(BuildContext context) {
    final dateTimeParser = Provider.of<IDateTimeParser>(context);
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final isSmallScreen = width < 600;
          final rowCapacity = isSmallScreen ? 2 : 3;

          const cardWidth = GoodCard.cardWidth;
          const spacing = 20;

          final horizontalPadding =
              (width - (cardWidth * rowCapacity)) / 2 - spacing;

          return Stack(
            children: [
              Column(
                children: [
                  const Header(title: "Лента новостей"),
                  const SizedBox(height: 10),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: rowCapacity,
                      childAspectRatio: 0.75,
                      padding: .symmetric(
                        horizontal: horizontalPadding.clamp(0, double.infinity),
                      ),
                      children: List.generate(
                        50,
                        (index) => Center(
                          child: GoodCard(
                            title: "Заголовок новости ${index + 1}",
                            creatingDate: dateTimeGenerator
                                .generateRandomPastThreeDaysDate(),
                            dateTimeParser: dateTimeParser,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: const .fromARGB(255, 230, 223, 223),
                  child: const Text("+", style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
