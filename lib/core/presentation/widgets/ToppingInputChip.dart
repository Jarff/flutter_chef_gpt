import 'package:flutter/material.dart';

class ToppingInputChip extends StatelessWidget {
  final String topping;
  final ValueChanged<String> onDeleted;
  // final ValueChanged<String> onSelected;
  const ToppingInputChip({
    super.key,
    required this.topping,
    required this.onDeleted,
    // required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 7),
      child: InputChip(
        key: ObjectKey(topping),
        label: Text(topping),
        avatar: CircleAvatar(
          child: Text(topping[0].toUpperCase()),
        ),
        onDeleted: () => onDeleted(topping),
        // onSelected: (bool value) => onSelected(topping),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: const EdgeInsets.all(2),
      ),
    );
  }
}
