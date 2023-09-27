import "dart:math";

void main() {
  
  Stopwatch stopwatch = Stopwatch()..start();
  
  double result = calc(100000000);

  print('Result: $result. Calculation time:  ${stopwatch.elapsed}');

  Point point1 = Point(0,0);
  Point point2 = Point(3,4);
  print(point2.distanceTo(point1));
}


double calc(int upto) {
  double result = 1;
  
  for (int i = 0; i < upto; i++) {
    result += exp( sin(i/360) );
  }

  return result;
}


class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}