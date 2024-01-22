import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/informationPanel/panelScreenTwo/panel_screen_two.dart';

import 'package:from_usa/pages/path/to/globals.dart' as globals;


class PanelScreenFirst extends StatelessWidget {
  const PanelScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 23.0, right: 23.0, top: 116.0),
        child: Center(
          child: SizedBox(
            width: globals.width * 0.807,
            child: Column(children: [
              Transform.scale(
                scale: 1.0,
                child: Image.asset(
                  "assetsPanel/assetsImage/armchair.png",
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: 328,
                    height: 414,
                    color: const Color.fromRGBO(154, 167, 198, 0.09),
                    child: const SizedBox(),
                  ),
                  Positioned(
                    top: -370,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: 700.0,
                      height: 700.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                const  Positioned(
                    top: 160,
                    left: 50,
                    child: TextWidgets(
                        text:
                            '      Покупка и доставка\nтоваров в США и Европе\n               с нами легко',
                        fontFamily: 'Lato',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        color:  Color.fromRGBO(19, 59, 119, 1.0),
                        letterSpacing: 0.5),
                  ),
                  const Positioned(
                    top: 270,
                    left: 50,
                    child: TextLato14pxW700(
                      text:
                          '               Привествую вас\n     информационной панели ',
                    ),
                  ),
                const  Positioned(
                    top: 370,
                    left: 120,
                    child: TextWidgets(
                        text: "FromUSA.UA",
                        fontFamily: 'Lato',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color:  Color.fromRGBO(15, 196, 148, 1.0),
                        letterSpacing: 1.0),
                  )
                ],
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const TextLato14pxW700(
                        text: 'Назад',
                      )),
                  Expanded(child: SvgPicture.asset("assetsPanel/assetsSvg/frame1.svg")),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PanelScreenTwo()));
                      },
                      child: const TextLato14pxW700(
                        text: 'Вперед',
                      )),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
