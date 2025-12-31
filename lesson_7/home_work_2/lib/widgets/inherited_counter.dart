
import 'package:flutter/material.dart';

class InheritedCounter extends InheritedWidget{ 
  final int counter; 
  final VoidCallback increaseCounterCallback;

  const InheritedCounter({super.key, required this.counter, required this.increaseCounterCallback, required super.child});

  static InheritedCounter? maybeOf(BuildContext context) => context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
  static InheritedCounter of(BuildContext context) {
    final InheritedCounter? result = maybeOf(context);
    assert(result != null, "No InheritedCounter found in context");
    return result!;
  }
  @override
  bool updateShouldNotify(InheritedCounter oldWidget) => oldWidget.counter != counter;
} 