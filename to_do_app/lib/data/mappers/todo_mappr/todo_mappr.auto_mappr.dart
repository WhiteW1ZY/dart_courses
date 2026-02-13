// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;
import 'package:to_do_app/data/models/todo_model/todo_model.dart' as _i2;
import 'package:to_do_app/domain/entities/todo_entity.dart' as _i3;

/// {@template package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart}
/// Available mappings:
/// - `TodoModel` → `TodoEntity`.
/// - `TodoEntity` → `TodoModel`.
/// {@endtemplate}
class $TodoMappr implements _i1.AutoMapprInterface {
  const $TodoMappr();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.TodoModel>() ||
            sourceTypeOf == _typeOf<_i2.TodoModel?>()) &&
        (targetTypeOf == _typeOf<_i3.TodoEntity>() ||
            targetTypeOf == _typeOf<_i3.TodoEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.TodoEntity>() ||
            sourceTypeOf == _typeOf<_i3.TodoEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.TodoModel>() ||
            targetTypeOf == _typeOf<_i2.TodoModel?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _safeConvert(model, onMappingError: onMappingError);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(model, onMappingError: onMappingError);
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>(
        (item) => _safeConvert(item, onMappingError: onMappingError),
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.TodoModel>() ||
            sourceTypeOf == _typeOf<_i2.TodoModel?>()) &&
        (targetTypeOf == _typeOf<_i3.TodoEntity>() ||
            targetTypeOf == _typeOf<_i3.TodoEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$TodoModel_To__i3$TodoEntity((model as _i2.TodoModel?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.TodoEntity>() ||
            sourceTypeOf == _typeOf<_i3.TodoEntity?>()) &&
        (targetTypeOf == _typeOf<_i2.TodoModel>() ||
            targetTypeOf == _typeOf<_i2.TodoModel?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$TodoEntity_To__i2$TodoModel((model as _i3.TodoEntity?))
          as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  TARGET? _safeConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (!useSafeMapping<SOURCE, TARGET>()) {
      return _convert(model, canReturnNull: true);
    }
    try {
      return _convert(model, canReturnNull: true);
    } catch (e, s) {
      onMappingError?.call(e, s, model);
      return null;
    }
  }

  /// {@macro AutoMapprInterface:useSafeMapping}
  /// {@macro package:to_do_app/data/mappers/todo_mappr/todo_mappr.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.TodoEntity _map__i2$TodoModel_To__i3$TodoEntity(_i2.TodoModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping TodoModel → TodoEntity failed because TodoModel was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<TodoModel, TodoEntity> to handle null values during mapping.',
      );
    }
    return _i3.TodoEntity(
      id: model.id,
      title: model.title,
      description: model.description,
      isCompleted: model.isCompleted,
    );
  }

  _i2.TodoModel _map__i3$TodoEntity_To__i2$TodoModel(_i3.TodoEntity? input) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping TodoEntity → TodoModel failed because TodoEntity was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<TodoEntity, TodoModel> to handle null values during mapping.',
      );
    }
    return _i2.TodoModel(
      id: model.id,
      title: model.title,
      description: model.description,
      isCompleted: model.isCompleted,
    );
  }
}
