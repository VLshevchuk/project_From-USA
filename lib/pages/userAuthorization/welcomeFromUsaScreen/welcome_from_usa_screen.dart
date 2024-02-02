import 'package:flutter/material.dart';
import 'package:from_usa/pages/informationPanel/part_screen_one.dart';
import '../../../help_widgets/green_button.dart';
import '../../../help_widgets/text_widget.dart';
import '../../path/to/globals.dart' as globals;

class WelcomeFromUsaScreen extends StatelessWidget {
  const WelcomeFromUsaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Center(
          child: SizedBox(
            width: globals.width * 0.807,
            child: Column(
              children: [
                globals.sizedBoxHeight90px,
                Transform.scale(
                  scale: 1.2,
                  child: Image.asset(
                    "assets/welcome.png",
                  ),
                ),
                const SizedBox(
                  width: 286.0,
                  child: TextWidgets(
                      text:
                          "Добро пожаловать\nв мир шопинга\nвместе с FromUSA!",
                      fontFamily: "Lato",
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(20, 63, 126, 1.0),
                      letterSpacing: 0.5),
                ),
                globals.sizedBoxHeight10px,
                const TextWidgets(
                    text:
                        'Логин и пароль был отправлен на Ваш\ne-mail. Если пароль не получен, проверьте\n папку “СПАМ”',
                    fontFamily: 'Lato',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(19, 59, 119, 1),
                    letterSpacing: 0.75),
                globals.sizedBoxHeight110px,
                GreenButton(
                  textWidget: const TextGreenButton(
                    text: 'Продолжить',
                  ),
                  change: false,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PartScreenOne(),
                      ),
                    );
                  },
                  fillColor: const Color.fromRGBO(15, 196, 148, 1.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
