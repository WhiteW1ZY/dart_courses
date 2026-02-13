// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/mappers/todo_mappr/todo_mappr.dart' as _i351;
import '../../data/mappers/user_mappr.dart/auth_mappr.dart' as _i904;
import '../../data/repositories/authorization_repository_impl.dart' as _i750;
import '../../data/repositories/todo_repository_impl.dart' as _i538;
import '../../domain/classes/get_user_data.dart' as _i1008;
import '../../domain/entities/todo_entity.dart' as _i783;
import '../../domain/repository/authorization_repository.dart' as _i964;
import '../../domain/repository/todo_repository.dart' as _i530;
import '../../domain/usecases/auth/authorization_usecase.dart' as _i208;
import '../../domain/usecases/auth/sign_in_usecase.dart' as _i549;
import '../../domain/usecases/auth/sign_out_usecase.dart' as _i1014;
import '../../domain/usecases/auth/sign_up_usecase.dart' as _i270;
import '../../domain/usecases/todo/add_todo_usecase.dart' as _i33;
import '../../domain/usecases/todo/comple_todo_usecase.dart' as _i645;
import '../../domain/usecases/todo/delete_todo_usecase.dart' as _i340;
import '../../domain/usecases/todo/get_todos_usecase.dart' as _i45;
import '../../domain/usecases/todo/update_todo_usecase.dart' as _i919;
import '../../presentation/bloc/cubits/add_todo_cubit.dart' as _i238;
import '../../presentation/bloc/cubits/sign_in_cubit.dart' as _i285;
import '../../presentation/bloc/cubits/sign_up_cubit.dart' as _i646;
import '../../presentation/bloc/cubits/todo_list_cubit.dart' as _i485;
import '../../presentation/bloc/cubits/update_todo_cubit.dart' as _i703;
import '../navigation/app_router.dart' as _i630;
import '../navigation/router/app_routes.dart' as _i76;
import '../navigation/router/routes/login_route.dart' as _i33;
import '../navigation/router/routes/todo_list_route.dart' as _i922;
import 'modules/auto_mappr_module.dart' as _i91;
import 'modules/firebase_module.dart' as _i398;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final autoMapprModule = _$AutoMapprModule();
    final firebaseModule = _$FirebaseModule();
    gh.factory<_i76.AppRoutes>(() => _i76.AppRoutes());
    gh.factory<_i33.LoginRoute>(() => _i33.LoginRoute());
    gh.factory<_i922.TodoListRoute>(() => _i922.TodoListRoute());
    gh.singleton<_i351.TodoMappr>(() => autoMapprModule.todoMappr);
    gh.singleton<_i904.AuthMappr>(() => autoMapprModule.authMappr);
    gh.singleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.singleton<_i974.FirebaseFirestore>(
      () => firebaseModule.firebaseFirestore,
    );
    gh.factory<_i964.AuthorizationRepository>(
      () => _i750.AuthorizationRepositoryImpl(
        gh<_i59.FirebaseAuth>(),
        gh<_i904.AuthMappr>(),
      ),
    );
    gh.factory<_i1008.GetUserData>(
      () => _i1008.GetUserData(gh<_i964.AuthorizationRepository>()),
    );
    gh.factory<_i208.AuthorizationUsecase>(
      () => _i208.AuthorizationUsecase(gh<_i964.AuthorizationRepository>()),
    );
    gh.factory<_i549.SignInUsecase>(
      () => _i549.SignInUsecase(gh<_i964.AuthorizationRepository>()),
    );
    gh.factory<_i1014.SignOutUsecase>(
      () => _i1014.SignOutUsecase(gh<_i964.AuthorizationRepository>()),
    );
    gh.factory<_i270.SignUpUsecase>(
      () => _i270.SignUpUsecase(gh<_i964.AuthorizationRepository>()),
    );
    gh.factory<_i285.SignInCubit>(
      () => _i285.SignInCubit(gh<_i549.SignInUsecase>()),
    );
    gh.factory<_i530.TodoRepository>(
      () => _i538.TodoRepositoryImpl(
        gh<_i974.FirebaseFirestore>(),
        gh<_i351.TodoMappr>(),
      ),
    );
    gh.factory<_i630.AppRouter>(
      () => _i630.AppRouter(
        gh<_i208.AuthorizationUsecase>(),
        gh<_i76.AppRoutes>(),
      ),
    );
    gh.factory<_i645.CompleTodoUsecase>(
      () => _i645.CompleTodoUsecase(
        gh<_i530.TodoRepository>(),
        gh<_i1008.GetUserData>(),
      ),
    );
    gh.factory<_i45.GetTodosUsecase>(
      () => _i45.GetTodosUsecase(
        gh<_i530.TodoRepository>(),
        gh<_i1008.GetUserData>(),
      ),
    );
    gh.factory<_i919.UpdateTodoUsecase>(
      () => _i919.UpdateTodoUsecase(
        gh<_i530.TodoRepository>(),
        gh<_i1008.GetUserData>(),
      ),
    );
    gh.factory<_i646.SignUpCubit>(
      () => _i646.SignUpCubit(gh<_i270.SignUpUsecase>()),
    );
    gh.factory<_i33.AddTodoUsecase>(
      () => _i33.AddTodoUsecase(
        gh<_i530.TodoRepository>(),
        gh<_i1008.GetUserData>(),
      ),
    );
    gh.factory<_i340.DeleteTodoUsecase>(
      () => _i340.DeleteTodoUsecase(
        gh<_i530.TodoRepository>(),
        gh<_i1008.GetUserData>(),
      ),
    );
    gh.factory<_i238.AddTodoCubit>(
      () => _i238.AddTodoCubit(gh<_i33.AddTodoUsecase>()),
    );
    gh.factory<_i485.TodoListCubit>(
      () => _i485.TodoListCubit(
        gh<_i1014.SignOutUsecase>(),
        gh<_i45.GetTodosUsecase>(),
        gh<_i340.DeleteTodoUsecase>(),
        gh<_i645.CompleTodoUsecase>(),
      ),
    );
    gh.factoryParam<_i703.UpdateTodoCubit, _i783.TodoEntity, dynamic>(
      (todo, _) => _i703.UpdateTodoCubit(gh<_i919.UpdateTodoUsecase>(), todo),
    );
    return this;
  }
}

class _$AutoMapprModule extends _i91.AutoMapprModule {}

class _$FirebaseModule extends _i398.FirebaseModule {}
