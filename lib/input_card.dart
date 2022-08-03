import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  InputCard({required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final cardChild;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(15)),
        // height: 200,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      ),
    );
  }
}
