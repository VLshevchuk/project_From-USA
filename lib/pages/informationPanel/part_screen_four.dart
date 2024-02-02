import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/row_widget.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/informationPanel/part_screen_five.dart';
import 'package:from_usa/pages/informationPanel/part_screen_three.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class PartScreenFour extends StatefulWidget {
  const PartScreenFour({super.key});

  @override
  State<PartScreenFour> createState() => _PartScreenFourState();
}

class _PartScreenFourState extends State<PartScreenFour> {
  bool change = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: globals.width * 0.9115,
          child: Column(
            children: [
              globals.sizedBoxHeight115px,
              Row(
                children: [
                  globals.sizedBoxWidth20px,
                  change
                      ? SvgPicture.asset("assetsPanel/assetsSvg/radio.svg")
                      : SvgPicture.asset(
                          "assetsPanel/assetsSvg/radioWhite.svg",
                          colorFilter: const ColorFilter.mode(
                            Color.fromRGBO(248, 250, 253, 1),
                            BlendMode.srcATop,
                          ),
                        ),
                  globals.sizedBoxWidth10px,
                  TextButton(
                    onPressed: () {
                      change = !change;
                      setState(() {
                        change;
                      });
                    },
                    child: const TextLato40pxW800(
                      text: 'Покупка и доставка',
                      customSize: 20.0,
                    ),
                  ),
                ],
              ),
              globals.sizedBoxHeight20px,
              Row(
                children: [
                  globals.sizedBoxWidth20px,
                  change
                      ? SvgPicture.asset(
                          "assetsPanel/assetsSvg/radioWhite.svg",
                          colorFilter: const ColorFilter.mode(
                            Color.fromRGBO(248, 250, 253, 1),
                            BlendMode.srcATop,
                          ),
                        )
                      : SvgPicture.asset(
                          "assetsDelivery/assetsSvg/radioBlue.svg",
                        ),
                  TextButton(
                    onPressed: () {
                      change = false;
                      setState(() {
                        change;
                      });
                    },
                    child: TextWidgets(
                      text: "Только доставка",
                      fontFamily: 'Lato',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                      color: change
                          ? const Color.fromRGBO(238, 241, 245, 1.0)
                          : const Color.fromRGBO(19, 59, 119, 1.0),
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
              globals.sizedBoxHeight70px,
              change
                  ? Column(
                      children: [
                        const RowWidget(
                          text: TextLato14pxW400(
                            text:
                                'Выберите желаемые товары в\nинтернет-магазинах США/Европы.',
                          ),
                          svgpicture: "assetsDelivery/assetsSvg/buy111.svg",
                          color: Color.fromRGBO(15, 196, 148, 1.0),
                        ),
                        globals.sizedBoxHeight80px,
                        const RowWidget(
                          text: TextLato14pxW400(
                            text:
                                'Скопируйте ссылки на выбранные\nтовары в форму заказа.',
                          ),
                          svgpicture: "assetsPanel/assetsSvg/copy.svg",
                          color: Color.fromRGBO(15, 196, 148, 1.0),
                        ),
                        globals.sizedBoxHeight80px,
                        const RowWidget(
                          text: TextLato14pxW400(
                            text:
                                'В течение 30 минут в кабинете\nпоявится расчёт стоимости покупки\nтоваров с доставкой.',
                          ),
                          svgpicture: "assetsPanel/assetsSvg/money.svg",
                          color: Color.fromRGBO(15, 196, 148, 1.0),
                        ),
                        globals.sizedBoxHeight80px,
                        const RowWidget(
                          text: TextLato14pxW400(
                            text:
                                'Мы выкупим Ваш заказ, и привезем его\nк Вам. Вы сможете отслеживать его в\nличном кабинете. ',
                          ),
                          svgpicture: "assetsPanel/assetsSvg/location.svg",
                          color: Color.fromRGBO(15, 196, 148, 1.0),
                        ),
                        globals.sizedBoxHeight80px,
                        Row(
                          children: [
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
                                  text: 'Назад',
                                )),
                            Expanded(
                              child: SvgPicture.asset(
                                "assetsPanel/assetsSvg/indicator4.svg",
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const PartScreenFive(),
                                  ),
                                );
                              },
                              child: const TextLato14pxW700(
                                text: 'Вперед',
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        const RowWidget(
                          text: TextLato14pxW400(
                            text:
                                'Выберите желаемые товары в\nинтернет-магазинах США/Европы.',
                          ),
                          svgpicture: "assetsPanel/assetsSvg/edit2.svg",
                          color: Color.fromRGBO(0, 102, 255, 1),
                        ),
                        globals.sizedBoxHeight80px,
                        const RowWidget(
                          text: TextLato14pxW400(
                            text:
                                'Скопируйте ссылки на выбранные\nтовары в форму заказа.',
                          ),
                          svgpicture: "assetsPanel/assetsSvg/edit2.svg",
                          color: Color.fromRGBO(0, 102, 255, 1),
                        ),
                        globals.sizedBoxHeight80px,
                        const RowWidget(
                          text: TextLato14pxW400(
                            text:
                                'В течение 30 минут в кабинете\nпоявится расчёт стоимости покупки\nтоваров с доставкой.',
                          ),
                          svgpicture: "assetsPanel/assetsSvg/money.svg",
                          color: Color.fromRGBO(0, 102, 255, 1),
                        ),
                        globals.sizedBoxHeight80px,
                        const RowWidget(
                          text: TextLato14pxW400(
                            text:
                                'Мы выкупим Ваш заказ, и привезем его\nк Вам. Вы сможете отслеживать его в\nличном кабинете. ',
                          ),
                          svgpicture: "assetsPanel/assetsSvg/location.svg",
                          color: Color.fromRGBO(0, 102, 255, 1),
                        ),
                        globals.sizedBoxHeight80px,
                        Row(
                          children: [
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
                                  text: 'Назад',
                                )),
                            Expanded(
                              child: SvgPicture.asset(
                                "assetsPanel/assetsSvg/indicator4.svg",
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const PartScreenFive(),
                                  ),
                                );
                              },
                              child: const TextLato14pxW700(
                                text: 'Вперед',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
