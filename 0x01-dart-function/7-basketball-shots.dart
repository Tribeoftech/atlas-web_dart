/// Determines the winning team based on the number of points scored by each team.
int whoWins(Map<String, int> team1, Map<String, int> team2) {
  int team1Points = 0;
  int team2Points = 0;
  team1.forEach((key, value) {
    if (key == 'Free throws')
      team1Points += value;
    else if (key == '2 pointers')
      team1Points += value * 2;
    else if (key == '3 pointers') team1Points += value * 3;
  });
  team2.forEach((key, value) {
    if (key == 'Free throws')
      team2Points += value;
    else if (key == '2 pointers')
      team2Points += value * 2;
    else if (key == '3 pointers') team2Points += value * 3;
  });
  if (team1Points > team2Points)
    return 1;
  else if (team1Points < team2Points)
    return 2;
  else
    return 0;
}
