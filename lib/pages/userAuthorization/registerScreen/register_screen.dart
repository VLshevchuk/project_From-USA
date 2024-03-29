import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/pages/userAuthorization/SmsScreen/sms_confirmation.dart';
import 'package:from_usa/pages/userAuthorization/entranceScreen/entrance_screen.dart';

import '../../../help_widgets/entry_field.dart';
import '../../../help_widgets/green_button.dart';
import '../../../help_widgets/text_widget.dart';

import '../../path/to/globals.dart' as globals;

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const Padding(
              padding: EdgeInsets.only(left: 21.0, top: 115.0),
              child: TextLato40pxW800(text: 'Регистрация'),
            ),
            globals.sizedBoxHeight20px,
            const EntryFieldTextField(
              labelText: 'Ваш имя*',
              textStyle: Color.fromRGBO(19, 59, 119, 1.0),
            ),
            globals.sizedBoxHeight10px,
            const EntryFieldTextField(
              labelText: 'Ваш email*',
              textStyle: Color.fromRGBO(19, 59, 119, 1.0),
            ),
            globals.sizedBoxHeight10px,
            const EntryFieldTextField(
              labelText: 'Ваш номер телефона*',
              textStyle: Color.fromRGBO(19, 59, 119, 1.0),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 35.0, right: 25.0),
              child: TextButton(
                onPressed: () {},
                child: const TextWidgets(
                    text:
                        'Регистрируясь,Вы соглашаетесь с пользовательским соглашением',
                    fontFamily: 'Poppins',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(19, 59, 119, 1),
                    letterSpacing: 0.75),
              ),
            ),
            globals.sizedBoxHeight40px,
            GreenButton(
              textWidget: const TextGreenButton(
                text: 'Зарегистрироваться',
              ),
              change: false,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SmsConfirmation()));
              },
              fillColor: const Color.fromRGBO(15, 196, 148, 1.0),
            ),
            globals.sizedBoxHeight20px,
            Row(
              children: [
                globals.sizedBoxWidth40px,
                SvgPicture.asset('assets/password.svg'),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, elevation: 0),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EntranceScreen()));
                  },
                  child: const TextLato14pxW700(text: 'Я уже зарегистрирован'),
                )
              ],
            ),
            globals.sizedBoxHeight30px,
            GreenButton(
                textWidget: const TextWidgets(
                    text: 'Войти как пользователь',
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(110, 113, 145, 1),
                    letterSpacing: 1.0),
                svg: "assets/group411.svg",
                change: true,
                fillColor: const Color.fromRGBO(241, 253, 248, 1),
                onPressed: () {}),
            globals.sizedBoxHeight10px,
            GreenButton(
                textWidget: const TextWidgets(
                    text: 'Войти как пользователь',
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(110, 113, 145, 1),
                    letterSpacing: 1.0),
                svg: "assets/vector.svg",
                change: true,
                fillColor: const Color.fromRGBO(241, 253, 248, 1),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
