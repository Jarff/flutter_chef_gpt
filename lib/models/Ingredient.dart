class Ingredient {
  final String name;
  final String amount;

  Ingredient({required this.name, required this.amount});

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      name: json['name'] as String,
      amount: json['amount'] as String,
    );
  }

  // Convert the instance back to JSON
  Map<String, dynamic> toJson() {
    return {'name': name, 'amount': amount};
  }
}
