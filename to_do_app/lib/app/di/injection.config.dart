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

import '../../data/mappers/theme_mappr/theme_mappr.dart' as _i571;
import '../../data/mappers/todo_mappr/todo_mappr.dart' as _i351;
import '../../data/mappers/user_mappr.dart/user_mappr.dart' as _i255;
import '../../data/repositories/authorization_repository_impl.dart' as _i750;
import '../../data/repositories/theme_repository_impl.dart' as _i858;
import '../../data/repositories/todo_repository_impl.dart' as _i538;
import '../../data/repositories/user_repository_impl.dart' as _i790;
import '../../domain/classes/get_user_data.dart' as _i1008;
import '../../domain/mappers/theme_mapper.dart' as _i390;
import '../../domain/repository/authorization_repository.dart' as _i964;
import '../../domain/repository/theme_repository.dart' as _i490;
import '../../domain/repository/todo_repository.dart' as _i530;
import '../../domain/repository/user_repository.dart' as _i566;
import '../../domain/usecases/auth/authorization_usecase.dart' as _i208;
import '../../domain/usecases/auth/sign_in_usecase.dart' as _i549;
import '../../domain/usecases/auth/sign_out_usecase.dart' as _i1014;
import '../../domain/usecases/auth/sign_up_usecase.dart' as _i270;
import '../../domain/usecases/theme/get_current_theme_usecase.dart' as _i448;
import '../../domain/usecases/theme/set_current_theme_usecase.dart' as _i917;
import '../../domain/usecases/todo/add_todo_usecase.dart' as _i33;
import '../../domain/usecases/todo/comple_todo_usecase.dart' as _i645;
import '../../domain/usecases/todo/delete_todo_usecase.dart' as _i340;
import '../../domain/usecases/todo/get_todo_usecase.dart' as _i143;
import '../../domain/usecases/todo/get_todos_usecase.dart' as _i45;
import '../../domain/usecases/todo/update_todo_usecase.dart' as _i919;
import '../../domain/usecases/user/get_user_data_usecase.dart' as _i329;
import '../../presentation/bloc/cubits/application_cubit.dart' as _i538;
import '../../presentation/bloc/cubits/authorization/sign_in_cubit.dart'
    as _i938;
import '../../presentation/bloc/cubits/authorization/sign_up_cubit.dart'
    as _i368;
import '../../presentation/bloc/cubits/profile_cubit.dart' as _i403;
import '../../presentation/bloc/cubits/root_cubit.dart' as _i408;
import '../../presentation/bloc/cubits/todo/add_todo_cubit.dart' as _i226;
import '../../presentation/bloc/cubits/todo/todo_list_cubit.dart' as _i816;
import '../../presentation/bloc/cubits/todo/update_todo_cubit.dart' as _i69;
import '../navigation/app_router.dart' as _i630;
import '../navigation/router/app_routes.dart' as _i76;
import '../navigation/router/routes/login_route.dart' as _i33;
import '../navigation/router/routes/root_route.dart' as _i490;
import '../navigation/router/routes/root_routes/todo_list_route.dart' as _i422;
import '../themes/app_themes.dart' as _i805;
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
    gh.factory<_i490.RootRoute>(() => _i490.RootRoute());
    gh.factory<_i422.TodoListRoute>(() => _i422.TodoListRoute());
    gh.factory<_i805.AppThemes>(() => _i805.AppThemes());
    gh.factory<_i571.ThemeMappr>(() => _i571.ThemeMappr());
    gh.factory<_i408.RootCubit>(() => _i408.RootCubit());
    gh.singleton<_i351.TodoMappr>(() => autoMapprModule.todoMappr);
    gh.singleton<_i255.UserMappr>(() => autoMapprModule.authMappr);
    gh.singleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.singleton<_i974.FirebaseFirestore>(
      () => firebaseModule.firebaseFirestore,
    );
    gh.factory<_i964.AuthorizationRepository>(
      () => _i750.AuthorizationRepositoryImpl(
        gh<_i59.FirebaseAuth>(),
        gh<_i255.UserMappr>(),
      ),
    );
    gh.factory<_i490.ThemeRepository>(
      () => _i858.ThemeRepositoryImpl(
        gh<_i974.FirebaseFirestore>(),
        gh<_i571.ThemeMappr>(),
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
    gh.factory<_i938.SignInCubit>(
      () => _i938.SignInCubit(gh<_i549.SignInUsecase>()),
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
    gh.factory<_i566.UserRepository>(
      () => _i790.UserRepositoryImpl(
        gh<_i59.FirebaseAuth>(),
        gh<_i255.UserMappr>(),
      ),
    );
    gh.factory<_i390.ThemeMapper>(
      () => _i390.ThemeMapper(gh<_i805.AppThemes>()),
    );
    gh.factory<_i645.CompleTodoUsecase>(
      () => _i645.CompleTodoUsecase(
        gh<_i530.TodoRepository>(),
        gh<_i1008.GetUserData>(),
      ),
    );
    gh.factory<_i143.GetTodoUsecase>(
      () => _i143.GetTodoUsecase(
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
    gh.factory<_i368.SignUpCubit>(
      () => _i368.SignUpCubit(gh<_i270.SignUpUsecase>()),
    );
    gh.factoryParam<_i69.UpdateTodoCubit, String, dynamic>(
      (todoId, _) => _i69.UpdateTodoCubit(
        gh<_i919.UpdateTodoUsecase>(),
        gh<_i143.GetTodoUsecase>(),
        todoId,
      ),
    );
    gh.factory<_i917.SetCurrentThemeUsecase>(
      () => _i917.SetCurrentThemeUsecase(
        gh<_i490.ThemeRepository>(),
        gh<_i1008.GetUserData>(),
      ),
    );
    gh.factory<_i448.GetCurrentThemeUsecase>(
      () => _i448.GetCurrentThemeUsecase(
        gh<_i490.ThemeRepository>(),
        gh<_i1008.GetUserData>(),
        gh<_i805.AppThemes>(),
        gh<_i390.ThemeMapper>(),
      ),
    );
    gh.factory<_i538.ApplicationCubit>(
      () => _i538.ApplicationCubit(
        gh<_i448.GetCurrentThemeUsecase>(),
        gh<_i917.SetCurrentThemeUsecase>(),
      ),
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
    gh.factory<_i329.GetUserDataUsecase>(
      () => _i329.GetUserDataUsecase(gh<_i566.UserRepository>()),
    );
    gh.factory<_i816.TodoListCubit>(
      () => _i816.TodoListCubit(
        gh<_i45.GetTodosUsecase>(),
        gh<_i340.DeleteTodoUsecase>(),
        gh<_i645.CompleTodoUsecase>(),
      ),
    );
    gh.factory<_i226.AddTodoCubit>(
      () => _i226.AddTodoCubit(gh<_i33.AddTodoUsecase>()),
    );
    gh.factory<_i403.ProfileCubit>(
      () => _i403.ProfileCubit(
        gh<_i1014.SignOutUsecase>(),
        gh<_i329.GetUserDataUsecase>(),
      ),
    );
    return this;
  }
}

class _$AutoMapprModule extends _i91.AutoMapprModule {}

class _$FirebaseModule extends _i398.FirebaseModule {}
