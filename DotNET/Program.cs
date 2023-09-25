using System.Diagnostics;
using static System.Math;

Stopwatch stopwatch = Stopwatch.StartNew();

double result = calc(100000000);

Console.WriteLine("Result: " + result + ". Calculation time (ms): " + stopwatch.ElapsedMilliseconds);


double calc(int upto)
{
    double result = 1;

    for (int i = 0; i < upto; i++)
    {
        result = result + Exp( Sin((double)i / 360) );
    }

    return result;
}