int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  // Define point values for each shot type
  int freeThrowPoints = 1;
  int twoPointerPoints = 2;
  int threePointerPoints = 3;

  // Calculate total points for teamA
  int teamAPoints = (teamA['Free throws']! * freeThrowPoints) +
                    (teamA['2 pointers']! * twoPointerPoints) +
                    (teamA['3 pointers']! * threePointerPoints);

  // Calculate total points for teamB
  int teamBPoints = (teamB['Free throws']! * freeThrowPoints) +
                    (teamB['2 pointers']! * twoPointerPoints) +
                    (teamB['3 pointers']! * threePointerPoints);

  // Determine the result based on total points
  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
