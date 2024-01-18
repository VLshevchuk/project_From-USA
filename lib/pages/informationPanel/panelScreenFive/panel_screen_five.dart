import 'package:flutter/material.dart';
import 'package:from_usa/pages/informationPanel/panelScreenLast/panel_screen_last.dart';
import 'package:from_usa/pages/informationPanel/panelScreenFour/panel_screen_four.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/helpWidgets/row_widget.dart';
import 'package:from_usa/helpWidgets/text_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';


class PanelScreenFive extends StatelessWidget {
  const PanelScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: globals.width * 0.9115,
          child: Column(
            children: [
              globals.sizedBoxHeight115px,
              Row(
                children: [
                  globals.sizedBoxWidth20px,
                  SvgPicture.asset(
                    "assetsPanel/assetsSvg/radioWhite.svg",
                    // ignore: deprecated_member_use
                    color:const Color.fromARGB(255, 223, 223, 223),
                  ),
                const  TextWidgets(
                      text: "Только доставка",
                      fontFamily: 'Lato',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                      color:  Color.fromRGBO(238, 241, 245, 1.0),
                      letterSpacing: 0.5),
                ],
              ),
              globals.sizedBoxHeight20px,
              Row(
                children: [
                  globals.sizedBoxWidth20px,
                  SvgPicture.asset("assetsPanel/assetsSvg/radioBlue.svg"),
                  globals.sizedBoxWidth10px,
                   const TextLato40pxW800(
                    text: 'Покупка и доставка',
                    customSize: 20.0,
                  )
                ],
              ),
              globals.sizedBoxHeight70px,
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
                                builder: (context) => const PanelScreenFour()));
                      },
                      child: const TextLato14pxW700(
                        text: 'Назад',
                      )),
                  Expanded(
                      child: SvgPicture.asset("assetsPanel/assetsSvg/indicator4.svg")),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PanelScreenLast(),),);
                    },
                    child: const TextLato14pxW700(
                      text: 'Вперед',
                    ),
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
