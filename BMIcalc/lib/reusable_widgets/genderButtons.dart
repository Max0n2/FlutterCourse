import 'package:bmicalc/constants/text_styles.dart';
import 'package:bmicalc/model/gender.dart';
import 'package:bmicalc/reusable_widgets/layout_card.dart';
import 'package:flutter/material.dart';

class GenderButtons extends StatefulWidget {
  const GenderButtons({Key? key}) : super(key: key);

  @override
  State<GenderButtons> createState() => _GenderButtonsState();
}

class _GenderButtonsState extends State<GenderButtons> {
  Gender selectedGender = Gender.male;

  void _setGender(Gender gender) {
    setState(() {
      selectedGender = gender;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: LayoutCard.fromActive(
              isActive: selectedGender == Gender.male,
              onTap: () => _setGender(Gender.male),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.male,
                    size: 120.0,
                  ),
                  Text(
                    'MALE',
                    style: kCardTitleTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: LayoutCard.fromActive(
              isActive: selectedGender == Gender.female,
              onTap: () => _setGender(Gender.female),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.male,
                    size: 120.0,
                  ),
                  Text(
                    'FAMALE',
                    style: kCardTitleTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
