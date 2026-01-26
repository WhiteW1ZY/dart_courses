import 'package:auto_route/auto_route.dart';
import 'package:task_2/router/auto_router_config.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: "/", page: MainRoute.page),
    AutoRoute(page: ContactRoute.page),
  ];
}
