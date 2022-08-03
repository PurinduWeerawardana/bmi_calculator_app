import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent(
      {required this.label,
      required this.icon,
      this.iconSize = 70,
      this.spaceBetween = 15});
  final String label;
  final IconData icon;
  final double iconSize;
  final double spaceBetween;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: spaceBetween,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
