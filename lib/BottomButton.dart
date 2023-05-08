import 'package:flutter/material.dart';
import 'constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.buttonName, required this.onTap});
  final String buttonName;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Center(
          child: Text(
            buttonName,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}
