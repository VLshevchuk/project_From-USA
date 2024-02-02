import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/green_button.dart';
import 'package:from_usa/pages/bag/main_page.dart';
import 'package:from_usa/pages/home/main_page.dart';
import 'package:from_usa/pages/profile/profile_main.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class MyParcelsMain extends StatelessWidget {
  const MyParcelsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          imageFirst: 'assetsBag/assetsSvg/notActivehome.svg',
          imageTwo: "assetsDelivery/assetsSvg/bag.svg",
          imageThree: "assets_profile/assetsSvg/box_bottom.svg",
          imageFor: "assets_profile/assetsSvg/profile_bottom.svg",
          onPressedFirst: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DeliveryMainScreen(),
              ),
            );
          },
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
      backgroundColor: Colors.white,
      appBar: AppBarGlobal(
        backPage: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileMain(),
            ),
          );
        },
        textWidget: Text(
          '',
          style: globals.textStyleFW800WFFLatoFS20LS05,
        ),
        imageRight: 'assets_profile/assetsSvg/stroke7.svg',
        svgButton: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
        ),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Мои заказы",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w800,
                    fontSize: 30.0,
                    letterSpacing: 0.5,
                    color: Color.fromRGBO(19, 59, 119, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 28.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  columnsIcons(
                    "Не\nоплачено",
                    'assets_profile/assetsSvg/moneybag7.svg',
                  ),
                  globals.sizedBoxWidth30px,
                  columnsIcons(
                    "Ожидает\nна отправку",
                    'assets_profile/assetsSvg/box7.svg',
                  ),
                  globals.sizedBoxWidth30px,
                  columnsIcons(
                    "Отправлено\nВам",
                    'assets_profile/assetsSvg/aeroplane7.svg',
                  ),
                  globals.sizedBoxWidth30px,
                  columnsIcons(
                    "Успешно\nполучен",
                    'assets_profile/assetsSvg/okay7.svg',
                  ),
                  globals.sizedBoxWidth30px,
                  columnsIcons(
                    "Оставить\nотзыв",
                    'assets_profile/assetsSvg/vector7.svg',
                  ),
                ],
              ),
            ),
            globals.sizedBoxHeight20px,
            ContainerContent(
              image: "assets_profile/assetsImg/rectangle7.png",
              numberOrder: "73529",
              dataDeliver: "13/12/2021",
              svgDelivery: "assets_profile/assetsSvg/ship7.svg",
              svgMoney: "assets_profile/assetsSvg/dollar7.svg",
              price: "8500.00\$",
              svgWeight: "assets_profile/assetsSvg/weight7.svg",
              statusOrder: "Готов к оплате",
              selectDelivery: "Море",
              statusButton: Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      24.0,
                    ),
                    color: const Color.fromRGBO(15, 196, 148, 1),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'Оплатить',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                          color: Color.fromRGBO(5, 98, 73, 1.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            globals.sizedBoxHeight10px,
            ContainerContent(
              image: "assets_profile/assetsImg/imageСhandelier7.png",
              numberOrder: "73530",
              dataDeliver: "30/12/2021",
              svgDelivery: "assets_profile/assetsSvg/aeroplane7.svg",
              svgMoney: "assets_profile/assetsSvg/dollar7.svg",
              price: "99500.00\$",
              svgWeight: "assets_profile/assetsSvg/weight7.svg",
              statusOrder: "Готов к оплате",
              selectDelivery: "Авиа",
              statusButton: Padding(
                padding: const EdgeInsets.only(
                  left: 100.0,
                ),
                child: Text(
                  'Оплачено',
                  style: globals.textStyleFW700WFFLatoFS14LS05,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget columnsIcons(String text, String svg) {
  return Column(
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          color: const Color.fromRGBO(232, 240, 252, 1),
        ),
        child: SvgPicture.asset(
          svg,
          fit: BoxFit.scaleDown,
        ),
      ),
      Text(
        text,
        textAlign: TextAlign.center,
      ),
    ],
  );
}

class ContainerContent extends StatelessWidget {
  final String image;
  final String numberOrder;
  final String dataDeliver;

  final String svgDelivery;

  final String selectDelivery;
  final String svgMoney;
  final String price;
  final String svgWeight;

  final String statusOrder;
  final Widget statusButton;
  const ContainerContent({
    super.key,
    required this.image,
    required this.numberOrder,
    required this.dataDeliver,
    required this.svgDelivery,
    required this.selectDelivery,
    required this.svgMoney,
    required this.price,
    required this.svgWeight,
    required this.statusOrder,
    required this.statusButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 154,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        border: Border.all(
          width: 2.0,
          color: const Color.fromRGBO(248, 250, 253, 1),
        ),
        color: const Color.fromRGBO(248, 250, 253, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          top: 10.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(image),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "№",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          globals.sizedBoxWidth10px,
                          Text(
                            numberOrder,
                            style: const TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0,
                              color: Color.fromRGBO(15, 196, 148, 1),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Дата доставки",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          globals.sizedBoxWidth10px,
                          Text(
                            dataDeliver,
                            style: globals.textStyleFW700WFFLatoFS14LS05,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            globals.sizedBoxHeight20px,
            Row(
              children: [
                SvgPicture.asset(
                  svgDelivery,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Text(
                  selectDelivery,
                  style: globals.textStyleFW700WFFLatoFS14LS05,
                ),
                const SizedBox(
                  width: 24.0,
                ),
                SvgPicture.asset(
                  svgMoney,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Text(
                  price,
                  style: globals.textStyleFW700WFFLatoFS14LS05,
                ),
                globals.sizedBoxWidth20px,
                SvgPicture.asset(
                  svgWeight,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Text(
                  "1000.00кг",
                  style: globals.textStyleFW700WFFLatoFS14LS05,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  statusOrder,
                  style: const TextStyle(
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.0,
                    color: Color.fromRGBO(0, 102, 255, 1),
                  ),
                ),
                const SizedBox(
                  width: 32.0,
                ),
                statusButton,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
