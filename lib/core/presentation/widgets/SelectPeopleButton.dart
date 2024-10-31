import 'package:chef_gpt/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';

class SelectPeopleButton extends StatefulWidget {
  String numberOfPeople;
  bool isActive;
  void Function()? onTap;

  SelectPeopleButton({
    super.key,
    required this.numberOfPeople,
    this.isActive = false,
    this.onTap,
  });

  @override
  State<SelectPeopleButton> createState() => _SelectPeopleButtonState();
}

class _SelectPeopleButtonState extends State<SelectPeopleButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(
              color: (widget.isActive)
                  ? Colors.white
                  : Colors.white.withOpacity(0.15),
              width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.numberOfPeople),
            Text(AppLocalizations.of(context).translate("People"))
          ],
        ),
      ),
    );
  }
}
