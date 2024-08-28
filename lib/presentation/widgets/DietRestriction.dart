import 'package:flutter/material.dart';

class DietRestriction extends StatefulWidget {
  bool isActive = false;
  String title;
  void Function(bool)? onChanged;

  DietRestriction(
      {super.key, required this.title, required this.isActive, this.onChanged});

  @override
  State<DietRestriction> createState() => _DietRestrictionState();
}

class _DietRestrictionState extends State<DietRestriction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title ?? "-",
              style: TextStyle(fontSize: 18),
            ),
            Switch(
              // This bool value toggles the switch.
              value: widget.isActive,
              activeColor: Colors.black,
              activeTrackColor: Colors.white,
              onChanged: widget.onChanged,
            )
          ],
        ),
      ),
    );
  }
}
