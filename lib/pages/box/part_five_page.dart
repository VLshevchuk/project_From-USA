import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/pages/box/part_first_page.dart';
import 'package:from_usa/pages/bag/bag_main_page.dart';
import 'package:from_usa/pages/home/home_main_page.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main_page.dart';

class PartFivePage extends StatelessWidget {
  const PartFivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          imageFirst: 'assetsBag/assetsSvg/notActivehome.svg',
          imageTwo: "assetsDelivery/assetsSvg/bag.svg",
          imageThree: "assets_profile/assetsSvg/boxActive.svg",
          imageFor: "assetsDelivery/assetsSvg/profile.svg",
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
          onPressedFor: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileMain(),
              ),
            );
          },
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
        imageLeft: 'assetsDelivery/assetsSvg/left2.svg',
        textWidget: Text(
          'Заказ №735689',
          style: globals.textStyleFW800WFFLatoFS20LS05,
        ),
        imageRight: 'assets_profile/assetsSvg/stroke7.svg',
        svgButton: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Только доставка",
                    style: globals.textStyleFW400WFFLatoFS14LS1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35.0,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 165.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: const Color.fromRGBO(248, 250, 253, 1),
                  ),
                ),
                Positioned(
                  top: -21,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Container(
                      width: 361.4,
                      height: 42.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: const Color.fromRGBO(15, 196, 148, 1),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {},
                          child:const Text(
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0,
                              color: Color.fromRGBO(5, 98, 73, 1.0),
                            ),
                            "Оплачено",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 40.0,
                  child: SizedBox(
                    width: 420,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ContainerBox(
                            text: "Товары",
                            svgPicture: 'assets_profile/assetsSvg/buy698.svg',
                          ),
                          ContainerBox(
                            text: "Отслеживание",
                            svgPicture: 'assets_profile/assetsSvg/tracking.svg',
                          ),
                          ContainerBox(
                            text: "Адрес доставки",
                            svgPicture: 'assets_profile/assetsSvg/address7.svg',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 135,
                  left: 160,
                  child: SvgPicture.asset(
                    "assets_profile/assetsSvg/group67373.svg",
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
                top: 20.0,
              ),
              height: 327.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                border: Border.all(
                  width: 2.0,
                  color: const Color.fromRGBO(248, 250, 253, 1.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 22.0,
                  left: 20.0,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60.0,
                          width: 60.0,
                          color: const Color.fromRGBO(248, 250, 253, 1.0),
                          child: SvgPicture.asset(
                            "assetsDelivery/assetsSvg/bag.svg",
                            fit: BoxFit.none,
                          ),
                        ),
                        globals.sizedBoxWidth10px,
                        Column(
                          children: [
                            Text(
                              "Заказ доставлен 16.12.20",
                              style: globals.textStyleFW700WFFLatoFS16LS05,
                            ),
                            Text(
                              "https://www.macys.com/...",
                              style: globals.textStyleFW400WFFLatoFS14LS1,
                            ),
                          ],
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight10px,
                    Row(
                      children: [
                        Text(
                          "Количество:",
                          style: globals.textStyleFW400WFFLatoFS14LS1,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "9 шт",
                          style: globals.textStyleFW700WFFLatoFS14LS05,
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight10px,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "Доп. услуги:",
                          style: globals.textStyleFW400WFFLatoFS14LS1,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          child: Text(
                            "Фото товару,додаткове пакування,перевiрка на увiмк/вимк",
                            style: globals.textStyleFW700WFFLatoFS14LS05,
                          ),
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight10px,
                    Row(
                      children: [
                        Text(
                          "Трек номер:",
                          style: globals.textStyleFW400WFFLatoFS14LS1,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Text(
                          "9400116901639555951023",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0,
                            color: Color.fromRGBO(0, 102, 255, 1),
                          ),
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight10px,
                    Row(
                      children: [
                        Text(
                          "Комментарий к товару",
                          style: globals.textStyleFW400WFFLatoFS14LS1,
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight10px,
                    Container(
                      height: 54.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: const Color.fromRGBO(248, 250, 253, 1),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Qty:",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "1",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Color:",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Navy",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Size",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "M",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //////Box2
            Container(
              margin: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
                top: 20.0,
              ),
              height: 327.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                border: Border.all(
                  width: 2.0,
                  color: const Color.fromRGBO(248, 250, 253, 1.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 22.0,
                  left: 20.0,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60.0,
                          width: 60.0,
                          color: const Color.fromRGBO(248, 250, 253, 1.0),
                          child: SvgPicture.asset(
                            "assetsDelivery/assetsSvg/bag.svg",
                            fit: BoxFit.none,
                          ),
                        ),
                        globals.sizedBoxWidth10px,
                        Column(
                          children: [
                            Text(
                              "Заказ доставлен 16.12.20",
                              style: globals.textStyleFW700WFFLatoFS16LS05,
                            ),
                            Text(
                              "https://www.macys.com/...",
                              style: globals.textStyleFW400WFFLatoFS14LS1,
                            ),
                          ],
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight10px,
                    Row(
                      children: [
                        Text(
                          "Количество:",
                          style: globals.textStyleFW400WFFLatoFS14LS1,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "9 шт",
                          style: globals.textStyleFW700WFFLatoFS14LS05,
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight10px,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "Доп. услуги:",
                          style: globals.textStyleFW400WFFLatoFS14LS1,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Flexible(
                          child: Text(
                            "Фото товару,додаткове пакування,перевiрка на увiмк/вимк",
                            style: globals.textStyleFW700WFFLatoFS14LS05,
                          ),
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight10px,
                    Row(
                      children: [
                        Text(
                          "Трек номер:",
                          style: globals.textStyleFW400WFFLatoFS14LS1,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Text(
                          "9400116901639555951023",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0,
                            color: Color.fromRGBO(0, 102, 255, 1),
                          ),
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight10px,
                    Row(
                      children: [
                        Text(
                          "Комментарий к товару",
                          style: globals.textStyleFW400WFFLatoFS14LS1,
                        ),
                      ],
                    ),
                    globals.sizedBoxHeight10px,
                    Container(
                      height: 54.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: Color.fromRGBO(248, 250, 253, 1),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Qty:",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "1",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Color:",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Navy",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Size",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "M",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
