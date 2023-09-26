import "dart:math";

void main() {
  
  Stopwatch stopwatch = Stopwatch()..start();
  
  double result = calc(100000000);

  print('Result: $result. Calculation time:  ${stopwatch.elapsed}');
}


double calc(int upto) {
  double result = 1;
  
  for (int i = 0; i < upto; i++) {
    result = result + exp( sin(i/360) );
  }

  return result;
}