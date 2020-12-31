import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  RoundedCard({@required this.colors, this.cardContent, this.state});

  final List<Color> colors;
  final Widget cardContent;
  final Function state;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: state,
      child: Container(
        margin: EdgeInsets.all(8.0),
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
