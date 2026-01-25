import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({super.key});

  @override
  createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            FadeTransition(
              opacity: _animation,
              child: Container(height: 300, width: 300, color: Colors.amber),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _controller.reset();
                _controller.forward();
              },
              child: const Text("Запустить анимацию"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _controller.stop();
              },
              child: const Text("Остановить анимацию"),
            ),
          ],
        ),
      ),
    );
  }
}
