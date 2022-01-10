int mySolution(int n, int d) {
  var str = "";
  for (int i = 0; i <= n; i++) {
    str += (i * i).toString();
  }

  return d.toString().allMatches(str).length;
}

int bestSolution(int n, int d) {
  var count = 0;
  for (var i = 0; i <= n; i++) {
    count += d.toString().allMatches((i * i).toString()).length;
  }
  return count;
}

int cleverSolution(int n, int d) =>
    '$d'.allMatches([for (var i = 0; i <= n; i += 1) i * i].join()).length;
