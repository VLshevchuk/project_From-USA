import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../helpWidgets/entry_field.dart';
import '../../../helpWidgets/green_button.dart';

import '../../../helpWidgets/text_widget.dart';
import '../../path/to/globals.dart' as globals;

class EntranceScreen extends StatelessWidget {
  const EntranceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 115.0),
            child: Row(
              children: [
                globals.sizedBoxWidth40px,
                 const TextLato40pxW800(text: 'Вход'),
              ],
            ),
          ),
          globals.sizedBoxHeight40px,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              globals.sizedBoxWidth40px,
              const TextWidgets(
                  text: "Введите эл. почту или телефон",
                  fontFamily: "Lato",
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 102, 255, 1.0),
                  letterSpacing: 0.5),
            ],
          ),
          globals.sizedBoxHeight40px,
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EntryFieldTextField(
                labelText: 'Ваш email или телефон*',
                textStyle: Color.fromRGBO(19, 59, 119, 1.0),
              ),
            ],
          ),
          globals.sizedBoxHeight60px,
          GreenButton(
            textWidget: const TextGreenButton(
              text: 'Напомнить пароль',
            ),
            change: false,
            onPressed: () {
            },
            fillColor: const Color.fromRGBO(15, 196, 148, 1.0),
          ),
          globals.sizedBoxHeight30px,
          Row(
            children: [
              globals.sizedBoxWidth40px,
              SvgPicture.asset('assets/password.svg'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, elevation: 0),
                onPressed: () {},
                child: const TextWidgets(
                    text: "Я вспомнил свой пароль",
                    fontFamily: 'Lato',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(19, 59, 119, 1.0),
                    letterSpacing: 1.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
