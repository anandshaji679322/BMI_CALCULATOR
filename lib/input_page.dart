import 'package:bmi/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableCard.dart';
import 'IconContent.dart';
import 'constant.dart';
import 'weigt_age_card.dart';
import 'BottomButton.dart';

enum Genter {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactivecardColor;
  Color femaleCardColor = kInactivecardColor;
  Genter? selectedGenter;
  int height = 180;
  int weight = 74;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          // Genter

          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                    selectedGenter == Genter.male
                        ? kActiveCardColor
                        : maleCardColor,
                    IconContentWidget(FontAwesomeIcons.mars, 'MALE'), () {
                  setState(() {
                    selectedGenter = Genter.male;
                  });
                }),
                //Expanded(child: child)
              ),
              Expanded(
                child: ReusableCard(
                    selectedGenter == Genter.female
                        ? kActiveCardColor
                        : femaleCardColor,
                    IconContentWidget(FontAwesomeIcons.venus, 'FEMALE'), () {
                  setState(() {
                    selectedGenter = Genter.female;
                  });
                }),
                //Expanded(child: child)
              )
            ],
          )),

          //Height

          Expanded(
            child: ReusableCard(
                kInactivecardColor,
                Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "HEIGHT",
                      style: kLabelTextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "$height",
                          style: NumberTextstyle,
                        ),
                        Text(
                          "cm",
                          style: kLabelTextstyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape:
                            RoundSliderThumbShape(enabledThumbRadius: 25.0),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0xffEB1555),
                        inactiveTrackColor: Color(0xff8D8E98),
                        activeTrackColor: Colors.white,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.toInt();
                          });
                        },
                      ),
                    )
                  ],
                ), () {
              setState(() {
                selectedGenter = Genter.female;
              });
            }),
            //Expanded(child: child)
          ),

          //weight && height

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: card(
                    kInactivecardColor,
                    Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "WEIGHT",
                          style: kLabelTextstyle,
                        ),
                        Text(
                          "$weight",
                          style: NumberTextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              FontAwesomeIcons.minus,
                              () {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    weight--;
                                  });
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              FontAwesomeIcons.plus,
                              () {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    weight++;
                                  });
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  //Expanded(child: child)
                ),

                //age

                Expanded(
                  child: card(
                      kInactivecardColor,
                      Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "AGE",
                            style: kLabelTextstyle,
                          ),
                          Text(
                            "$age",
                            style: NumberTextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                FontAwesomeIcons.minus,
                                () {
                                  WidgetsBinding.instance
                                      .addPostFrameCallback((_) {
                                    setState(() {
                                      age--;
                                    });
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                FontAwesomeIcons.plus,
                                () {
                                  WidgetsBinding.instance
                                      .addPostFrameCallback((_) {
                                    setState(() {
                                      age++;
                                    });
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      )),
                  //Expanded(child: child)
                ),
              ],
            ),
          ),

          BottomButton(
              buttonName: 'CALCULATE',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Result()));
              }),
        ]));
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function fweight;
  const RoundIconButton(this.icon, this.fweight);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: () {
        fweight();
      },
      shape: CircleBorder(),
      elevation: 6,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
