import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/app/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(initializerName: 'init', preferRelativeImports: true)
void configureDependencies() => getIt.init();
