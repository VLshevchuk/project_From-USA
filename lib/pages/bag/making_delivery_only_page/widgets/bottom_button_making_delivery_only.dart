import 'package:flutter/material.dart';
import 'package:from_usa/help_widgets/green_button.dart';

class BottomButtonMakingDeliveryOnlyWidget extends StatelessWidget {
  const BottomButtonMakingDeliveryOnlyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GreenButton(
      fillColor: const Color.fromRGBO(238, 241, 245, 1.0),
      onPressed: () {},
      change: false,
      textWidget: const Text(
        'Далее',
        style: TextStyle(
          color: Color.fromRGBO(167, 176, 192, 1.0),
          fontFamily: 'Lato,',
          fontWeight: FontWeight.w800,
          fontSize: 14.0,
          letterSpacing: 1.0,
        ),
      ),
    );
  }
}
