/// Converts a list of temperatures in Celsius to a list of temperatures in Fahrenheit.
List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = [];
  for (var i = 0; i < temperaturesInC.length; i++) {
    String tempInF = ((temperaturesInC[i] * 9 / 5) + 32).toStringAsFixed(2);
    if (tempInF.split(".")[1].length < 3) {
      tempInF = tempInF + "0";
    }
    temperaturesInF.add(double.parse(tempInF));
  }
  return temperaturesInF;
}
