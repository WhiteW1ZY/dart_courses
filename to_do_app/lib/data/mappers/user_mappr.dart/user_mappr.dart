import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:to_do_app/data/mappers/user_mappr.dart/user_mappr.auto_mappr.dart';
import 'package:to_do_app/domain/entities/user_entity.dart';

@AutoMappr([
  MapType<User, UserEntity>(fields: [Field('id', from: 'uid')]),
])
class UserMappr extends $UserMappr {
  UserEntity? nullableUserEntityToModel(User? user) =>
      user == null ? null : convert(user);
}
