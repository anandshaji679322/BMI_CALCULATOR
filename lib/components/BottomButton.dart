import 'package:flutter/material.dart';
import '../constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.buttonName,required this.onTap});
  final String buttonName;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$buttonName",
              style: kLargeButtonStyle,
            ),
          ],
        ),
      ),
      color: kBottomContainerColor,
      margin: EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: kBottomContainerHeight,
    );
  }
}