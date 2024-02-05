import 'package:flutter/material.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/green_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/help_widgets/row_widget.dart';
import 'package:from_usa/pages/bag/bag_main_page.dart';
import 'package:from_usa/pages/box/box_main_page.dart';
import 'package:from_usa/pages/home/home_main_page.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class DeliveryOnly extends StatelessWidget {
  const DeliveryOnly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(15, 196, 148, 1.0),
        child: SvgPicture.asset(
          "assetsDelivery/assetsSvg/+.svg",
        ),
      ),
      floatingActionButtonLocation: CustomFloatingActionButtonLocation(
        bottom: 68,
        left: 177.5,
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.none,
        elevation: 0,
        child: BottomAppBarWidget(
          imageFirst: 'assetsDelivery/assetsSvg/home.svg',
          imageTwo: "assetsDelivery/assetsSvg/bag.svg",
          imageThree: "assetsBag/assetsSvg/invoice.svg",
          imageFor: "assetsDelivery/assetsSvg/profile.svg",
          onPressedFirst: () {},
          onPressedTwo: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StoreCatalog(),
              ),
            );
          },
          onPressedThree: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BoxMain(),
              ),
            );
          },
          onPressedFor: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
        ),
        child: Column(
          children: [
            globals.sizedBoxHeight50px,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DeliveryMainScreen(),
                      ),
                    );
                  },
                  icon: SvgPicture.asset(
                    'assetsDelivery/assetsSvg/left2.svg',
                  ),
                ),
                const TextWidgets(
                    text: "Только  доставка",
                    fontFamily: 'Lato',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(19, 59, 119, 1.0),
                    letterSpacing: 0.5),
                SvgPicture.asset(
                  'assetsDelivery/assetsSvg/vectorD.svg',
                ),
              ],
            ),
            globals.sizedBoxHeight30px,
            Container(
              height: 74.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(
                  10.0,
                ),
                color: const Color.fromRGBO(248, 250, 253, 1.0),
              ),
              child: const Column(
                children: [
                  Center(
                    child: TextLato14pxW400(
                      text: '''Текст о мейлфорвардинге и о том что мы 
    доставим супер быстро но такие покупки 
                           менее защищены''',
                    ),
                  ),
                ],
              ),
            ),
            globals.sizedBoxHeight40px,
            const RowWidget(
                text: TextLato14pxW400(
                  text: '''Скопируйте адреса складов, на 
которые Вы сможете доставлять 
самостоятельно купленные заказы''',
                ),
                svgpicture: "assetsPanel/assetsSvg/copy.svg",
                color: Color.fromRGBO(0, 102, 255, 1),
                a: true),
            globals.sizedBoxHeight30px,
            const RowWidget(
              text: TextLato14pxW400(
                text: '''Введите трекинг-номер, полученный
от магазина.''',
              ),
              svgpicture: "assetsPanel/assetsSvg/edit2.svg",
              color: Color.fromRGBO(0, 102, 255, 1.0),
            ),
            globals.sizedBoxHeight70px,
            const RowWidget(
              text: TextLato14pxW400(
                text: '''Выберите способ доставки и
 оплатите заказ''',
              ),
              svgpicture: "assetsPanel/assetsSvg/money.svg",
              color: Color.fromRGBO(0, 102, 255, 1.0),
            ),
            globals.sizedBoxHeight70px,
            const RowWidget(
              text: TextLato14pxW400(
                text: '''Теперь остается всего немного
подождать, и посылка у Вас
!PS.... можете отслеживать ее в своем 
кабинете''',
              ),
              svgpicture: "assetsPanel/assetsSvg/location.svg",
              color: Color.fromRGBO(0, 102, 255, 1.0),
            ),
            globals.sizedBoxHeight60px,
            GreenButton(
              fillColor: const Color.fromRGBO(0, 102, 255, 1.0),
              onPressed: () {},
              change: true,
              textWidget: const Center(
                child: TextWidgets(
                  text: "РАССЧИТАТЬ ТОЛЬКО ДОСТАВКУ",
                  fontFamily: "Lato",
                  fontSize: 14.0,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  letterSpacing: 1.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
