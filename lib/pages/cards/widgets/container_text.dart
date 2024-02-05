import 'package:flutter/material.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class ContainerText extends StatelessWidget {
  final String introductoryText;
  final String secondaryText;
  final double? heightBox;
  final Widget? widgetField;
  const ContainerText({
    super.key,
    required this.introductoryText,
    required this.secondaryText,
    this.heightBox,
    this.widgetField,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightBox ?? 226.0,
      width: 328.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        color: const Color.fromRGBO(248, 250, 253, 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              introductoryText,
              style: globals.textStyleFW800WFFLatoFS20LS05,
            ),
            globals.sizedBoxHeight10px,
            Text(
              secondaryText,
              style: globals.textStyleFW400WFFLatoFS14LS1,
            ),
            widgetField ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
