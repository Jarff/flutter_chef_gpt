class Instruction {
  final int step;
  final String description;

  Instruction({required this.step, required this.description});

  factory Instruction.fromJson(Map<String, dynamic> json) {
    return Instruction(
        step: json['step'] as int, description: json['description'] as String);
  }

  // Convert the instance back to JSON
  Map<String, dynamic> toJson() {
    return {
      'step': step,
      'description': description,
    };
  }
}
