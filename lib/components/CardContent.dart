import 'package:flutter/material.dart';
import '../constants.dart';

class CardContent extends StatelessWidget {
  CardContent({this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Color(0xFF2c1c4f),
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: textStyle,
        ),
      ],
    );
  }
}
