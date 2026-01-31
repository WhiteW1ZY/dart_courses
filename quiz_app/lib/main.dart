import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:quiz_app/app/navigation/app_router.dart';
import 'package:quiz_app/app/web/dio/dio_generator.dart';
import 'package:quiz_app/domain/auth_service/auth_service_impl.dart';
import 'package:quiz_app/domain/database_service/database_service_impl.dart';
import 'package:quiz_app/domain/quiz_service/quiz_service_impl.dart';
import 'package:quiz_app/quiz_app.dart';

final _authService = AuthServiceImpl(firebaseAuth: FirebaseAuth.instance);
final _router = createRouter(authService: _authService);
final _dio = createDio(dotenv.get("API_KEY"));
final _quizService = QuizServiceImpl(dio: _dio);
final _databaseService = DatabaseServiceImpl(
  firebaseFirestore: FirebaseFirestore.instance,
);
void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    QuizApp(
      router: _router,
      authService: _authService,
      quizService: _quizService,
      databaseService: _databaseService,
    ),
  );
}
