import 'package:bmi/constant.dart';
import 'package:flutter/material.dart';
import '../components/weigt_age_card.dart';
import '../components/BottomButton.dart';
import 'package:bmi/calculator_brain.dart';

class Result extends StatelessWidget {
  Result({required this.bmiResult,required this.resultText,required this.interpretation});
   final String bmiResult;
   final String resultText;
   final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kResultPageTextstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: card(
              kActiveCardColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    resultText,
                    textAlign: TextAlign.center,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    textAlign: TextAlign.center,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonName: "RE-CALCULATE",
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
