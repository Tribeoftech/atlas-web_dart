// 3-factors.dart

/// Calculates the factorial of the given integer [f].
int fact(int f) {
  if (f == 1 || f == 0) // Base case: factorial of 0 or 1 is 1
    return 1;
  else if (f < 0)
    return 0; // Factorial of negative numbers is undefined, return 0 for simplicity
  else
    return f * fact(f - 1); // Recursive case: multiply f by factorial of (f - 1)
}
