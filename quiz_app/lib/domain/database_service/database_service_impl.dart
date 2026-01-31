import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_app/domain/database_service/database_service.dart';
import 'package:quiz_app/domain/models/user_score/user_score.dart';

class DatabaseServiceImpl implements DatabaseService {
  final FirebaseFirestore firebaseFirestore;

  const DatabaseServiceImpl({required this.firebaseFirestore});

  @override
  Future<List<UserScore>> fetchResults() async {
    final event = await firebaseFirestore.collection("user_score").get();

    List<UserScore> userScores = [];

    for (var doc in event.docs) {
      userScores.add(UserScore.fromJson(doc.data()));
    }
    return userScores;
  }

  @override
  Future<void> saveResult(UserScore userScore) async {
    await firebaseFirestore.collection("user_score").add(userScore.toJson());
  }
}
