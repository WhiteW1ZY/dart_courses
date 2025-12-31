import '../Abstract/calculation_operation.dart';

class Multiplication implements CalculationOperation {  
  @override
  num calculate(num a, num b) => a * b;
} 