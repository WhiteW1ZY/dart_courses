import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/data/mappers/theme_mappr/theme_mappr.dart';
import 'package:to_do_app/data/models/theme_model/theme_model.dart';
import 'package:to_do_app/domain/entities/theme/theme_entity.dart';
import 'package:to_do_app/domain/exceptions/not_found_exeption.dart';
import 'package:to_do_app/domain/repository/theme_repository.dart';

@Injectable(as: ThemeRepository)
class ThemeRepositoryImpl implements ThemeRepository {
  final FirebaseFirestore _firebaseFirestore;
  final ThemeMappr _mappr;

  const ThemeRepositoryImpl(this._firebaseFirestore, this._mappr);

  String _themeDataAbsolutePath(String userId) =>
      "$_usersCollectionPath/$userId/$_themeCollectionDataPath/$_themeDataPath";

  static const String _themeCollectionDataPath = "themeCollectionData";
  static const String _themeDataPath = "themeData";

  static const String _usersCollectionPath = "users";

  @override
  Future<ThemeEntity> getCurrentTheme(String userId) async {
    final docPath = _firebaseFirestore.doc(_themeDataAbsolutePath(userId));
    final docRef = await docPath.get();
    final data = docRef.data();

    if (data == null) {
      throw NotFoundException(
        message: "User with this id $userId or theme data was not found",
      );
    }

    final theme = ThemeModel.fromJson(data);

    return _mappr.getThemeEntityFromModel(theme);
  }

  @override
  Future<void> setCurrentTheme(String userId, ThemeEntity themeData) async {
    final docRef = _firebaseFirestore.doc(_themeDataAbsolutePath(userId));
    final theme = _mappr.getThemeModelFromEntity(themeData).toJson();
    docRef.set(theme);
  }
}
