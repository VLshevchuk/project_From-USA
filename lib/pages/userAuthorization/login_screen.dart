import 'package:flutter/material.dart';
import 'package:from_usa/help_widgets/green_button.dart';
import 'package:from_usa/pages/userAuthorization/register_screen.dart';
import '../../help_widgets/text_widget.dart';

import '../../help_widgets/entry_field.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 25.0,
          ),
          child: Center(
            child: SizedBox(
              width: globals.width * 0.807,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 21.0,
                      top: 115.0,
                    ),
                    child: TextLato40pxW800(
                      text: 'Вход',
                    ),
                  ),
                  globals.sizedBoxHeight20px,
                  const EntryFieldTextField(
                    labelText: 'Ваш номер телефона*',
                    hintText: "+38",
                    textStyle: Color.fromRGBO(19, 59, 119, 1),
                  ),
                  globals.sizedBoxHeight10px,
                  const EntryFieldTextField(
                    labelText: 'Ваш пароль*',
                    suffixIcon: 'assets/viewer2.svg',
                    textStyle: Color.fromRGBO(19, 59, 119, 1),
                  ),
                  globals.sizedBoxHeight50px,
                  GreenButton(
                    textWidget: const TextGreenButton(
                      text: 'Войти',
                    ),
                    change: false,
                    onPressed: () {},
                    fillColor: const Color.fromRGBO(15, 196, 148, 1.0),
                  ),
                  globals.sizedBoxHeight30px,
                  Row(
                    children: [
                      globals.sizedBoxWidth20px,
                      SvgPicture.asset('assets/Lock.svg'),
                      globals.sizedBoxWidth20px,
                      const TextLato14pxW700(text: 'Напомнить пароль'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 23.0,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/add_user.svg'),
                        globals.sizedBoxWidth10px,
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ),
                            );
                          },
                          child: const TextLato14pxW700(
                              text: 'Зарегистрироваться'),
                        ),
                      ],
                    ),
                  ),
                  globals.sizedBoxHeight70px,
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
                    onPressed: () {},
                  ),
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
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
