using System.Diagnostics;
using static System.Math;

Stopwatch stopwatch = Stopwatch.StartNew();
double result = calc(100000000);
Console.WriteLine("Result: " + result + ". Calculation time (ms): " + stopwatch.ElapsedMilliseconds);

stopwatch = Stopwatch.StartNew();
calculatePoints(5000);
Console.WriteLine("Result: " + result + ". Calculation time (ms): " + stopwatch.ElapsedMilliseconds);

double calc(int iterations)
{
    double result = 1;

    for (int i = 0; i < iterations; i++)
    {
        result += Exp( Sin((double)i / 360) );
    }

    return result;
}


void calculatePoints(int iterations)
{
  for (int i = 0; i < iterations; i++)
    {
      Point point1 = new Point(0,0);
      Point point2 = new Point(3,4);
      System.Console.WriteLine(point2.distanceTo(point1));
    }
}


class Point {
  private double x;
  private double y;

  public Point(double x, double y)
  {
    this.x = x;
    this.y = y;
  }

  public double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return Sqrt(dx * dx + dy * dy);
  }
}