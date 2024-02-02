import 'package:flutter/material.dart';
import 'package:from_usa/help_widgets/text_widget.dart';

class EstimatedCost extends StatelessWidget {
  const EstimatedCost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.0,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(15.0),
        color: const Color.fromRGBO(248, 250, 253, 1),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          left: 20.0,
          top: 10,
        ),
        child: TextWidgets(
          text: "1000.00\$",
          fontFamily: "Lato",
          fontSize: 30.0,
          fontWeight: FontWeight.w800,
          color: Color.fromRGBO(19, 59, 119, 1.0),
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
