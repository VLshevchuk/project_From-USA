import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:from_usa/pages/userAuthorization/WelcomeFromUsaScreen/welcome_from_usa_screen.dart';
import 'package:from_usa/pages/userAuthorization/entrance_screen.dart';
import '../../help_widgets/green_button.dart';
import '../path/to/globals.dart' as globals;

import '../../help_widgets/text_widget.dart';

class SmsConfirmation extends StatelessWidget {
  const SmsConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 115.0),
              child: TextLato40pxW800(
                text: 'Код\nподтверждения',
              ),
            ),
            globals.sizedBoxHeight40px,
            const Padding(
              padding: EdgeInsets.only(right: 30),
              child: TextWidgets(
                  text: "Смс с кодом отправлено на номер:\n+38 0630588512",
                  fontFamily: "Lato",
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 102, 255, 1),
                  letterSpacing: 0.5),
            ),
            globals.sizedBoxHeight50px,
            globals.sizedBoxHeight70px,
            GreenButton(
              textWidget: const TextGreenButton(
                text: 'Зарегистрироваться',
              ),
              change: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeFromUsaScreen(),
                  ),
                );
              },
              fillColor: const Color.fromRGBO(15, 196, 148, 1.0),
            ),
            globals.sizedBoxHeight30px,
            Row(
              children: [
                globals.sizedBoxWidth40px,
                const TextLato14pxW700(
                  text: 'Отправить код повторно через: 24',
                ),
              ],
            ),
            Row(
              children: [
                globals.sizedBoxHeight70px,
                globals.sizedBoxWidth40px,
                SvgPicture.asset(
                  'assets/password.svg',
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, elevation: 0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EntranceScreen(),
                      ),
                    );
                  },
                  child: const TextLato14pxW700(
                    text: 'Я уже зарегистрирован',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
