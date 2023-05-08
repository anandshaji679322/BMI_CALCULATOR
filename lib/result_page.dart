import 'package:bmi/constant.dart';
import 'package:bmi/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'weigt_age_card.dart';
import 'BottomButton.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

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
                margin: EdgeInsets.only(left: 10.0, top: 30.0),
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
                      "overweight",
                      textAlign: TextAlign.center,
                      style: kResultTextStyle,
                    ),
                    Text(
                      "34",
                      textAlign: TextAlign.center,
                      style: kBmiTextStyle,
                    ),
                    Text(
                      "Your BMI result is quiet low, you shoud eat more",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                buttonName: "RE-CALCULATE",
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
