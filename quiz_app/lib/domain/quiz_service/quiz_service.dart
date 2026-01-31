import 'package:quiz_app/domain/models/category/category.dart';
import 'package:quiz_app/domain/models/question/question.dart';

abstract interface class QuizService {
  Future<List<Category>> fetchCategories();
  Future<List<Question>> fetchQuestions(String categoryName);
}
