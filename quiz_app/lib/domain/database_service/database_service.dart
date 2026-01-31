import 'package:quiz_app/domain/models/user_score/user_score.dart';

abstract interface class DatabaseService {
  Future<void> saveResult(UserScore userScore);
  Future<List<UserScore>> fetchResults();
}
