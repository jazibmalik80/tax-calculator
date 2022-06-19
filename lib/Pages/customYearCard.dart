import 'package:flutter/material.dart';

class CustomYearCard extends StatelessWidget {
  final String year;
  final Color colour;
  final Color textColor;

  const CustomYearCard({
    required this.year,
    required this.colour,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Color(0x33000000),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 22, 10, 22),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              ' $year',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
