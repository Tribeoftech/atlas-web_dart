/// Reads a score from the command line arguments and prints "You Passed" if the score is greater than or equal to 80.
void main(List<String> args) {
  int nb = int.parse(args[0]);
  assert(nb >= 80, 'The score must be bigger or equal to 80');
  print('You Passed');
}