import '../Abstract/calculation_operation.dart';

class Division implements CalculationOperation {   
  @override
  num calculate(num a, num b) => a / b;
} 