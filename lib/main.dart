import 'package:bmi/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi/screens/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF090C22),
        appBarTheme: AppBarTheme(
          color: Color(0xFF080A1B),
        ),
      ),
      home: InputPage(),
    );
  }
}
