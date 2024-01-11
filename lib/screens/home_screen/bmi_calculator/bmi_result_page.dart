import 'package:flutter/material.dart';
import 'package:pemmob_app/screens/home_screen/bmi_calculator/bmi_constant.dart';
import 'package:pemmob_app/screens/home_screen/bmi_calculator/bmi_reusable_card.dart';
import 'package:pemmob_app/utils/constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.bmiResult,
    required this.result,
    required this.review,
  });

  final String bmiResult;
  final String result;
  final String review;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('BMI Calculator'),
      //   elevation: 0,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                onPress: () {},
                colour: kActiveCardColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        result.toString(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                      Text(
                        review,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: kBottomContainerHeight,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(bottom: 10),
              color: kTextColorBlack,
              child: const Center(
                child: Text(
                  'Re-Calculate',
                  style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.white70),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
