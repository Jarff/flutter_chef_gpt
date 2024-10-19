import 'package:chef_gpt/core/domain/entities/instruction.dart';

class InstructionModel implements Instruction {
  @override
  final int step;
  @override
  final String description;

  InstructionModel({required this.step, required this.description});

  factory InstructionModel.fromJson(Map<String, dynamic> json) {
    return InstructionModel(
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
