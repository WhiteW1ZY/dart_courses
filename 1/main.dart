import 'classes/circle.dart';
import 'classes/rectangle.dart';
import 'classes/triangle.dart';

void main() {
  var shapes = [
    Circle(12),
    Rectangle(5, 10),
    Triangle(4, 5, 6)
  ];
  
  for(var shape in shapes) {
    print(shape);
  }
}