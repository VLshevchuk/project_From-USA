import 'package:flutter/material.dart';
import 'package:from_usa/help_widgets/green_button.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GreenButton(
      fillColor: const Color.fromRGBO(15, 196, 148, 1.0),
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const MakingAPurchaseAndDelivery(),
        //   ),
        // );
      },
      change: false,
      textWidget: const Text(
        'Далее',
        style: TextStyle(
          color: Color.fromRGBO(5, 98, 73, 1.0),
          fontFamily: 'Lato,',
          fontWeight: FontWeight.w800,
          fontSize: 14.0,
          letterSpacing: 1.0,
        ),
      ),
    );
  }
}
