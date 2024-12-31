import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategorieTabWidget extends StatelessWidget {
  String txt;
  bool isSelected;
  CategorieTabWidget({required this.txt, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Theme.of(context).primaryColor, width: 2),
          color: isSelected == true
              ? Theme.of(context).primaryColor
              : Colors.white),
      child: Text(txt,
          style: isSelected == true
              ? const TextStyle(fontSize: 18, color: Colors.white)
              : TextStyle(fontSize: 18, color: Theme.of(context).primaryColor)),
    );
  }
}
