import 'package:flutter/material.dart';
import 'package:tax_calculator/Pages/calculator_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tax Calculator',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color(0xFF19AA70),
          accentColor: Colors.white,
        ),
        home: CalculatorPage(),
      ),
    );
  }
}
