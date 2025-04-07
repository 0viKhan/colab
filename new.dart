void main() {
  var students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  var averages = {
    for (var s in students)
      s['name'] as String: (
          (s['scores'] as List<int>).reduce((a, b) => a + b) /
              (s['scores'] as List<int>).length
      ).toStringAsFixed(2)
  };

  var sorted = Map.fromEntries(
      averages.entries.toList()
        ..sort((a, b) => double.parse(b.value).compareTo(double.parse(a.value)))
  );

  print(sorted);
}
