// This code demonstrates how to print a double value with a specified number of decimal places.
void main() {
  var n = 3.14159265359;
  String inString = n.toStringAsFixed(2);
  double outDouble = double.parse(inString);
  print('Double: $outDouble\n');
}