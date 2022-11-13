import 'package:bmicalc/constants/Number_style.dart';
import 'package:bmicalc/reusable_widgets/genderButtons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../model/gender.dart';
import '../reusable_widgets/layout_card.dart';

class ParametersInputScreen extends StatefulWidget {
  @override
  State<ParametersInputScreen> createState() => _ParametersInputScreenState();
}

class _ParametersInputScreenState extends State<ParametersInputScreen> {
  double _currentSliderValue = 172;
  late double height2;
  double weight = 68;
  double age = 18;
  double ans = 0;

  String calc(){
    ans = weight / pow(_currentSliderValue / 100, 2);
    return ans.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR')),
      body: Column(
        children: [
          GenderButtons(),
          Expanded(
            child: LayoutCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kCardTitleTextStyle,),
                  Text(_currentSliderValue.toString(),style: kCardNumberTextStyle,),
                  Slider(
                    value: _currentSliderValue,
                    min: 100,
                    max: 210.0,
                    divisions: 110,
                    activeColor: activeElementColor,
                    inactiveColor: inactionElementColor,
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: LayoutCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT',style: kCardTitleTextStyle,),
                      Text(weight.toString()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: floatingButtonColor,
                              shape: CircleBorder(),
                              fixedSize: Size(50, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: Icon(CupertinoIcons.minus),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: floatingButtonColor,
                                shape: CircleBorder(),
                                fixedSize: Size(50, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(CupertinoIcons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: LayoutCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',style: kCardTitleTextStyle,),
                          Text(age.toString()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: floatingButtonColor,
                                  shape: CircleBorder(),
                                  fixedSize: Size(50, 50),
                                ),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(CupertinoIcons.minus),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: floatingButtonColor,
                                  shape: CircleBorder(),
                                  fixedSize: Size(50, 50),
                                ),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(CupertinoIcons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: activeElementColor,
            height: 80.0,
            width: double.infinity,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {calc();},
                  child: Text("CALCULATE"),
                ),
                Text(ans.toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
