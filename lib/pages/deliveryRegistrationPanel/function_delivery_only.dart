import 'package:flutter/material.dart';
import 'package:from_usa/helpWidgets/green_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:from_usa/helpWidgets/text_widget.dart';
import 'package:from_usa/helpWidgets/row_widget.dart';
import 'package:from_usa/pages/bagTab/store_catalog_main_screen.dart';
import 'package:from_usa/pages/deliveryRegistrationPanel/delivery_main_screen.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class FunctionDeliveryOnly extends StatelessWidget {
  const FunctionDeliveryOnly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(15, 196, 148, 1.0),
        child: SvgPicture.asset("assetsDelivery/assetsSvg/+.svg"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: const Color.fromARGB(255, 232, 235, 241),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assetsDelivery/assetsSvg/home.svg"),
              ),
              IconButton(
                onPressed: () {
                     Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StoreCatalog(),
                    ),
                  );
                },
                icon: SvgPicture.asset("assetsDelivery/assetsSvg/bag.svg"),
              ),
              globals.sizedBoxWidth40px,
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assetsDelivery/assetsSvg/group.svg"),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assetsDelivery/assetsSvg/profile.svg"),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
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
                        builder: (context) =>const DeliveryMainScreen(),
                      ),
                    );
                  },
                  icon: SvgPicture.asset('assetsDelivery/assetsSvg/left2.svg'),
                ),
                const TextWidgets(
                    text: "Только  доставка",
                    fontFamily: 'Lato',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(19, 59, 119, 1.0),
                    letterSpacing: 0.5),
                SvgPicture.asset('assetsDelivery/assetsSvg/vectorD.svg'),
              ],
            ),
            globals.sizedBoxHeight30px,
            Container(
              height: 74.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10.0),
                color: const Color.fromRGBO(241, 253, 248, 1.0),
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
              color: Color.fromRGBO(0, 102, 255, 1),
            ),
            globals.sizedBoxHeight70px,
            const RowWidget(
              text: TextLato14pxW400(
                text: '''Выберите способ доставки и
 оплатите заказ''',
              ),
              svgpicture: "assetsPanel/assetsSvg/money.svg",
              color: Color.fromRGBO(0, 102, 255, 1),
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
              color: Color.fromRGBO(0, 102, 255, 1),
            ),
            globals.sizedBoxHeight60px,
            GreenButton(
              fillColor: const Color.fromRGBO(0, 102, 255, 1),
              onPressed: () {},
              change: true,
              textWidget: const Center(
                child: TextWidgets(
                  text: "РАССЧИТАТЬ ТОЛЬКО ДОСТАВКУ",
                  fontFamily: "Lato",
                  fontSize: 14.0,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(255, 255, 255, 1),
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
