/// Adds two integers and returns the result.
int add(int a, int b) {
  return a + b;
}

// Description: subtract two numbers
int sub(int a, int b) {
  return a - b;
}

// Description: show the result of add() and sub()
String showFunc(int a, int b) {
  return "Add ${a} + ${b} = ${add(a, b)}\nSub ${a} - ${b} = ${sub(a, b)}";
}