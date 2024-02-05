import 'package:flutter/material.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class RowText extends StatelessWidget {
  final String text1;
  final String text2;

  const RowText({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: globals.textStyleFW400WFFLatoFS14LS1,
        ),
        Text(
          text2,
          style: globals.textStyleFW700WFFLatoFS14LS05,
        ),
      ],
    );
  }
}