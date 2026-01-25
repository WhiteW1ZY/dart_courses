import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<StatefulWidget> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  bool isFirstState = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() => isFirstState = !isFirstState);
          },
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            transitionBuilder: (child, animation) {
              final scaleAnimation = Tween<double>(
                begin: 0.0,
                end: 1.0,
              ).animate(animation);

              return ScaleTransition(scale: scaleAnimation, child: child);
            },
            child: isFirstState
                ? Container(
                    key: const ValueKey(1),
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  )
                : Container(
                    key: const ValueKey(2),
                    height: 150,
                    width: 150,
                    color: Colors.red,
                  ),
          ),
        ),
      ),
    );
  }
}
