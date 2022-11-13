import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../screens/parameters_input_screen.dart';

class BMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: darkBackground,
          scaffoldBackgroundColor: darkBackground,
          appBarTheme: const AppBarTheme(
            backgroundColor: darkBackground,
          )),
      home: ParametersInputScreen(),
    );
  }
}
