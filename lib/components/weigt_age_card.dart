import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  card(this.colour, this.cardChild);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
