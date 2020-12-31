import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  RoundedCard({@required this.colors, this.cardContent});

  final List<Color> colors;
  final Widget cardContent;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: colors,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: cardContent,
      ),
    );
  }
}
