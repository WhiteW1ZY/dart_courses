import 'dart:math'; 
import 'shape.dart';

class Triangle extends Shape {
  double _a;
  double _b;
  double _c;

  Triangle(this._a, this._b, this._c);

  @override 
  double area() {
    var p = _semiperimeter();
    var s = sqrt(p * (p - _a) * (p - _b) * (p - _c));
    return s;
  }
  
  @override 
  double perimeter() => _a + _b + _c;

  double _semiperimeter() => perimeter() / 2;
}