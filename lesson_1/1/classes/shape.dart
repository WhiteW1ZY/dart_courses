abstract class Shape {
  double area();
  double perimeter();

  @override
  String toString() => "area: ${area()} perimeter: ${perimeter()}";
}