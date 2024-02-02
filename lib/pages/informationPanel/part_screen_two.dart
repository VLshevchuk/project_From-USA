import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/pages/informationPanel/part_screen_one.dart';

import 'package:from_usa/pages/informationPanel/part_screen_three.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

import '../../help_widgets/text_widget.dart';

class PartScreenTwo extends StatelessWidget {
  const PartScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 23.0, right: 23.0, top: 176.0),
        child: Center(
          child: SizedBox(
            width: globals.width * 0.807,
            child: Column(
              children: [
                Container(
                  color: const Color.fromRGBO(248, 250, 253, 1),
                  child: Column(children: [
                    Transform.scale(
                      scale: 1.1,
                      child: Image.asset("assetsPanel/assetsImage/nike2.png"),
                    ),
                    globals.sizedBoxHeight60px,
                    Row(
                      children: [
                        globals.sizedBoxWidth10px,
                        SvgPicture.asset("assetsPanel/assetsSvg/left.svg"),
                        const Expanded(
                          child: Center(
                            child: TextWidgets(
                                text: "Nike Pegasus Trail 2",
                                fontFamily: "Lato",
                                fontSize: 20.0,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(19, 59, 119, 1.0),
                                letterSpacing: 0.5),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: SvgPicture.asset(
                              "assetsPanel/assetsSvg/right.svg"),
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight40px,
                    const Row(
                      children: [
                        SizedBox(
                          width: 22.0,
                        ),
                        Expanded(
                          child: TextWidgets(
                              text: 'Цена в Украине',
                              fontFamily: 'Lato',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(19, 59, 119, 1.0),
                              letterSpacing: 0.5),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 22),
                          child: TextLato14pxW700(text: "\$202"),
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight10px,
                    const Row(
                      children: [
                        SizedBox(
                          width: 22.0,
                        ),
                        Expanded(
                          child: TextWidgets(
                              text: 'Цена в США',
                              fontFamily: 'Lato',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(19, 59, 119, 1.0),
                              letterSpacing: 0.5),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 22.0),
                          child: TextLato14pxW700(text: "\$130"),
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight20px,
                    Container(
                      width: 303,
                      height: 75,
                      color: const Color.fromRGBO(154, 167, 198, 0.09),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TextWidgets(
                              text: "Экономия",
                              fontFamily: "Lato",
                              fontSize: 30.0,
                              fontWeight: FontWeight.w800,
                              color: Color.fromRGBO(19, 59, 119, 1.0),
                              letterSpacing: 0.5),
                          globals.sizedBoxWidth10px,
                          const TextWidgets(
                              text: "72\$",
                              fontFamily: 'Lato',
                              fontSize: 30.0,
                              fontWeight: FontWeight.w800,
                              color: Color.fromRGBO(15, 196, 148, 1.0),
                              letterSpacing: 0.5)
                        ],
                      ),
                    ),
                    globals.sizedBoxHeight60px,
                    Container(
                      width: 328.0,
                      height: 74.0,
                      color: const Color.fromRGBO(241, 253, 248, 1.0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidgets(
                              text: "Срок доставки примерно 10 дней",
                              fontFamily: "Popins",
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(19, 59, 119, 1.0),
                              letterSpacing: 0.5),
                        ],
                      ),
                    ),
                    globals.sizedBoxHeight70px,
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PartScreenOne(),
                                ),
                              );
                            },
                            child: const TextLato14pxW700(
                              text: 'Назад',
                            )),
                        Expanded(
                          child: SvgPicture.asset(
                            "assetsPanel/assetsSvg/indicator2.svg",
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const PartScreenThree(),
                                ),
                              );
                            },
                            child: const TextLato14pxW700(
                              text: 'Вперед',
                            )),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
