import 'dart:math'; 
import 'shape.dart';

class Circle extends Shape { 
  double _r;  
  
  Circle(this._r); 
  
  @override
  double area() => pi * pow(_r,2);

  @override
  double perimeter() => 2 * pi * _r; 
}