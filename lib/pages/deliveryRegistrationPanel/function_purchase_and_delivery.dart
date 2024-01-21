import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:from_usa/helpWidgets/BottomAppBar/bottom_appBar_widget.dart';
import 'package:from_usa/helpWidgets/BottomAppBar/customfloating_action_button_location.dart';
import 'package:from_usa/helpWidgets/green_button.dart';
import 'package:from_usa/helpWidgets/row_widget.dart';
import 'package:from_usa/helpWidgets/text_widget.dart';
import 'package:from_usa/pages/bagTab/store_catalog_main_screen.dart';
import 'package:from_usa/pages/deliveryRegistrationPanel/delivery_main_screen.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class FunctionPurchaseAndDelivery extends StatelessWidget {
  const FunctionPurchaseAndDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(15, 196, 148, 1.0),
        child: SvgPicture.asset("assetsDelivery/assetsSvg/+.svg"),
      ),
      floatingActionButtonLocation:
          CustomFloatingActionButtonLocation(bottom: 68, left: 177.5),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.none,
        elevation: 0,
        child: BottomAppBarWidget(
          imageFirst: 'assetsDelivery/assetsSvg/home.svg',
          imageTwo: "assetsDelivery/assetsSvg/bag.svg",
          imageThree: "assetsDelivery/assetsSvg/group.svg",
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
          onPressedThree: () {},
          onPressedFor: () {},
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
                        builder: (context) => const DeliveryMainScreen(),
                      ),
                    );
                  },
                  icon: SvgPicture.asset('assetsDelivery/assetsSvg/left2.svg'),
                ),
                const TextWidgets(
                    text: "Покупка и доставка",
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
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10.0),
                color: const Color.fromRGBO(241, 253, 248, 1.0),
              ),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(
                        14.0,
                      ).copyWith(top: 9.0),
                      child: const TextLato14pxW400(
                        text:
                            "Текст о безопастности и всем таком,что отличает покупку и доставку от просто доставки",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            globals.sizedBoxHeight40px,
            const RowWidget(
              text: TextLato14pxW400(
                text:
                    'Выберите желаемые товары в\nинтернет-магазинах США/Европы.',
              ),
              svgpicture: "assetsDelivery/assetsSvg/buy111.svg",
              color: Color.fromRGBO(15, 196, 148, 1.0),
            ),
            globals.sizedBoxHeight70px,
            const RowWidget(
              text: TextLato14pxW400(
                text: 'Скопируйте ссылки на выбранные\nтовары в форму заказа.',
              ),
              svgpicture: "assetsDelivery/assetsSvg/ww.svg",
              color: Color.fromRGBO(15, 196, 148, 1.0),
            ),
            globals.sizedBoxHeight70px,
            const RowWidget(
              text: TextLato14pxW400(
                text:
                    'В течение 30 минут в кабинете\nпоявится расчёт стоимости покупки\nтоваров с доставкой.',
              ),
              svgpicture: "assetsPanel/assetsSvg/money.svg",
              color: Color.fromRGBO(15, 196, 148, 1.0),
            ),
            globals.sizedBoxHeight70px,
            const RowWidget(
              text: TextLato14pxW400(
                text:
                    'Мы выкупим Ваш заказ, и привезем его\nк Вам. Вы сможете отслеживать его в\nличном кабинете. ',
              ),
              svgpicture: "assetsPanel/assetsSvg/location.svg",
              color: Color.fromRGBO(15, 196, 148, 1.0),
            ),
            globals.sizedBoxHeight70px,
            GreenButton(
              fillColor: const Color.fromRGBO(15, 196, 148, 1.0),
              onPressed: () {},
              change: true,
              textWidget: const Center(
                child: TextGreenButton(
                  text: 'РАССЧИТАТЬ ПОКУПКУ И ДОСТАВКУ',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
