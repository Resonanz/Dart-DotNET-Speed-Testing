import "dart:math";

void main() {
  
  Stopwatch stopwatch = Stopwatch()..start();
  double result = calc(100000000);
  print('Result: $result. Calculation time:  ${stopwatch.elapsed}');

  stopwatch = Stopwatch()..start();
  calculatePoints(5000);
  print('Result: $result. Calculation time:  ${stopwatch.elapsed}');

}


double calc(int iterations) {
  double result = 1;
  
  for (int i = 0; i < iterations; i++) {
    result += exp( sin(i/360) );
  }

  return result;
}


void calculatePoints(int iterations)
{
  for (int i = 0; i < iterations; i++)
    {
      Point point1 = Point(0,0);
      Point point2 = Point(3,4);
      print(point2.distanceTo(point1));
    }
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