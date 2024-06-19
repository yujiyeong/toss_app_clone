class SimpleStock {
  final String name;

  const SimpleStock({
    required this.name,
  });

  factory SimpleStock.fromJson(dynamic json) {
    return SimpleStock(name: json['name']);
  }

  @override
  String toString() {
    return name.toString();
  }
}