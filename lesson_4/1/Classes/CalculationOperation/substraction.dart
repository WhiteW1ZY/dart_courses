import '../Abstract/calculation_operation.dart';

class Subtraction implements CalculationOperation { 
  @override
  num calculate(num a, num b) => a - b;
} 
