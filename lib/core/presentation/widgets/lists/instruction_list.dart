import 'package:chef_gpt/core/domain/entities/instruction.dart';
import 'package:flutter/material.dart';

class InstructionList extends StatelessWidget {
  final List<Instruction> instructions;
  const InstructionList({super.key, required this.instructions});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: instructions.map((item) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                "${item.step}. ${item.description}",
                style: const TextStyle(fontSize: 16),
              ),
            ), // List item text
          ],
        );
      }).toList(),
    );
  }
}
