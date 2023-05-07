import 'package:flutter/material.dart';
import 'constant.dart';


class IconContentWidget extends StatelessWidget {
  final icon;
  final genter;

  IconContentWidget(this.icon, this.genter);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(style: kLabelTextstyle, "$genter")
      ],
    );
  }
}
