import 'package:flutter/material.dart';

class QuestionTile extends StatelessWidget {
  final String optionText;
  final bool isSelected;
  final void Function(int index) onSelect;
  final int index;
  const QuestionTile(
      {super.key,
      required this.index,
      required this.optionText,
      required this.isSelected,
      required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelect(index);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding:
            const EdgeInsets.only(top: 25, bottom: 25, left: 20, right: 15),
        width: double.infinity,
        decoration: BoxDecoration(
            color: isSelected
                ? const Color.fromARGB(255, 220, 220, 236)
                : Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          optionText,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ),
    );
  }
}
