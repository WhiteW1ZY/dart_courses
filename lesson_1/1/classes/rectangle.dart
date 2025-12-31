import 'shape.dart';

class Rectangle extends Shape {
  double _height;
  double _width;

  Rectangle(this._height, this._width);

  @override
  double area() => _height * _width;

  @override 
  double perimeter() => 2 * (_height + _width); 
}