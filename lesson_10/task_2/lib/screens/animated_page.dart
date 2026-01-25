import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({super.key});

  @override
  State<StatefulWidget> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  bool isFirstState = true;

  final animationDuration = const Duration(milliseconds: 600);
  final containerSize = (100.0, 100.0);
  final random = Random();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: GestureDetector(
        onTap: () => setState(() => isFirstState = !isFirstState),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: animationDuration,
              left: isFirstState
                  ? size.width * 0.1
                  : size.width * 0.9 - containerSize.$1,
              top: isFirstState
                  ? size.height * (0.1 + random.nextDouble() * 0.8)
                  : size.height * (0.1 + random.nextDouble() * 0.8) -
                        containerSize.$2,

              child: AnimatedContainer(
                duration: animationDuration,
                width: containerSize.$1,
                height: containerSize.$2,
                decoration: BoxDecoration(
                  borderRadius: const .all(.circular(100)),
                  color: isFirstState ? Colors.amber : Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
