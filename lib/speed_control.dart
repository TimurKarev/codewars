int myGps(int s, List<double> x) {
  if (x.length <= 1) {
    return 0;
  }
  return [
    for (int i = 0; i < x.length - 1; i++) ((3600 * (x[i + 1] - x[i])) ~/ s)
  ].reduce((value, element) => value < element ? element : value);
}
