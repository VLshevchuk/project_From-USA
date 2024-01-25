import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/pages/informationPanel/panelScreenFirst/panelScreenTwo/panelScreenThree/panelScreenFour/panel_screen_four.dart';
import 'package:from_usa/pages/informationPanel/panelScreenFirst/panelScreenTwo/panel_screen_two.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

import '../../../../../help_widgets/text_widget.dart';

class PanelScreenThree extends StatelessWidget {
  const PanelScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: globals.width * 0.9115,
          child: Column(
            children: [
              const SizedBox(
                height: 225.0,
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: globals.width * 0.7972,
                    height: globals.height * 0.27626,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromRGBO(248, 250, 253, 1),
                          width: 1),
                      color: const Color.fromRGBO(154, 167, 198, 0.09),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Transform.scale(
                      scale: 1.0,
                      child: Image.asset(
                          'assetsPanel/assetsImage/deliveryman1.png'),
                    ),
                  ),
                  Positioned(
                    top: 165,
                    bottom: 10,
                    right: 75,
                    child: Row(
                      children: [
                        Image.asset("assetsPanel/assetsImage/usa2.png"),
                        SvgPicture.asset("assetsPanel/assetsSvg/fromUSA.svg"),
                      ],
                    ),
                  ),
                ],
              ),
              globals.sizedBoxHeight40px,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assetsPanel/assetsSvg/tick.svg"),
                  const TextLato14pxW700(
                    text: "8 лет на рынке",
                  ),
                ],
              ),
              globals.sizedBoxHeight30px,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assetsPanel/assetsSvg/tick.svg"),
                  const TextLato14pxW700(
                    text: "Более 1.000.000 доставленных товаров",
                  ),
                ],
              ),
              globals.sizedBoxHeight30px,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assetsPanel/assetsSvg/tick.svg"),
                  const TextLato14pxW700(
                    text: "200.000 пользователей",
                  ),
                ],
              ),
              globals.sizedBoxHeight30px,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset("assetsPanel/assetsSvg/tick.svg"),
                  const TextLato14pxW700(
                    text: '''"4,6 из 5 - Рейтинг основанный на более
                        1000 отзывов"''',
                  ),
                ],
              ),
              globals.sizedBoxHeight90px,
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PanelScreenTwo()));
                      },
                      child: const TextLato14pxW700(
                        text: 'Назад',
                      )),
                  Expanded(
                    child: SvgPicture.asset(
                        "assetsPanel/assetsSvg/indicator3.svg"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PanelScreenFour(),
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
        ),
      ),
    );
  }
}
