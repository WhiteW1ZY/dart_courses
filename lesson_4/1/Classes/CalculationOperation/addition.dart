import '../Abstract/calculation_operation.dart';

class Addition implements CalculationOperation {  
  @override
  num calculate(num a, num b) => a + b;
}