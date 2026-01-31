import 'package:quiz_app/domain/models/category/category.dart';
import 'package:quiz_app/domain/models/question/question.dart';
import 'package:quiz_app/domain/quiz_service/quiz_service.dart';
import 'package:dio/dio.dart';

class QuizServiceImpl implements QuizService {
  final Dio dio;

  const QuizServiceImpl({required this.dio});
  @override
  Future<List<Category>> fetchCategories() async {
    final response = await dio.get("v1/categories");
    final categoriesJson = response.data as List<dynamic>;
    return categoriesJson
        .map((json) => Category.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<Question>> fetchQuestions(String categoryName) async {
    final response = await dio.get(
      "v1/questions",
      queryParameters: {'category': categoryName, 'limit': 3},
    );

    print(response.data);

    final questionJson = response.data as List<dynamic>;
    return questionJson
        .map((json) => Question.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
