void main(List<String> args) {
  final circle = Circle.fromDiameter(10);
  print(circle);
  const square = Square.fromSide(side: 5);
  print(square);
}

class Circle {
  final double radius;

  Circle({required this.radius});

  factory Circle.fromDiameter(double diameter) {
    return Circle(radius: diameter / 2);
  }
}

// Name constructor
class Square {
  final double side;

  // const Square({required this.side});
  const Square.fromSide({required this.side});
}
