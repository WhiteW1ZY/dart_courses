import 'package:flutter/material.dart';
import 'package:task_2/router/auto_router_config.dart';

class Application extends StatelessWidget {
  Application({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _appRouter.config());
  }
}
