import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/pages/bag/main_page.dart';
import 'package:from_usa/pages/home/main_page.dart';
import 'package:from_usa/pages/profile/profile_main.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class WarehouseAddress extends StatelessWidget {
  const WarehouseAddress({super.key});

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
        imageLeft: 'assetsDelivery/assetsSvg/left2.svg',
        textWidget: Text(
          'Адреса складов',
          style: globals.textStyleFW800WFFLatoFS20LS05,
        ),
        imageRight: 'assets_profile/assetsSvg/stroke7.svg',
        svgButton: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 60.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 470.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: const Color.fromRGBO(248, 250, 253, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Основной\nсклад",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w800,
                                fontSize: 30.0,
                                letterSpacing: 0.5,
                                color: Color.fromRGBO(19, 59, 119, 1),
                              ),
                            ),
                            globals.sizedBoxHeight40px,
                            Text("ФИО",
                                style: globals.textStyleFW400WFFLatoFS14LS1),
                            Text("Ваше Фио",
                                style: globals.textStyleFW700WFFLatoFS16LS05),
                            globals.sizedBoxHeight10px,
                            Text("Улица",
                                style: globals.textStyleFW400WFFLatoFS14LS1),
                            row("645 W 1st Ave. ste DN01326..."),
                            globals.sizedBoxHeight10px,
                            Text("Город",
                                style: globals.textStyleFW400WFFLatoFS14LS1),
                            row("Roselle"),
                            globals.sizedBoxHeight10px,
                            Text("Штат",
                                style: globals.textStyleFW400WFFLatoFS14LS1),
                            row("New Jersey"),
                            globals.sizedBoxHeight10px,
                            Text("Индекс",
                                style: globals.textStyleFW400WFFLatoFS14LS1),
                            row("07203"),
                            globals.sizedBoxHeight10px,
                            Text("Телефон",
                                style: globals.textStyleFW400WFFLatoFS14LS1),
                            row("+1 908 241 21 90"),
                          ],
                        ),
                      ),
                    ),
                    globals.sizedBoxWidth10px,
                    Container(
                      margin: const EdgeInsets.only(right: 25.0),
                      height: 470.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: const Color.fromRGBO(248, 250, 253, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Дополнительный\nсклад",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w800,
                                fontSize: 30.0,
                                letterSpacing: 0.5,
                                color: Color.fromRGBO(19, 59, 119, 1),
                              ),
                            ),
                            globals.sizedBoxHeight40px,
                            Text("ФИО",
                                style: globals.textStyleFW400WFFLatoFS14LS1),
                            Text("Ваше Фио",
                                style: globals.textStyleFW700WFFLatoFS16LS05),
                            globals.sizedBoxHeight10px,
                            Text("Улица",
                                style: globals.textStyleFW400WFFLatoFS14LS1),
                            row("645 W 1st Ave. ste DN01326..."),
                            globals.sizedBoxHeight10px,
                            Text("Город",
                                style: globals.textStyleFW400WFFLatoFS14LS1),
                            row("Roselle"),
                            globals.sizedBoxHeight10px,
                            Text("Штат",
                                style: globals.textStyleFW400WFFLatoFS14LS1),
                            row("New Jersey"),
                            globals.sizedBoxHeight10px,
                            Text("Индекс",
                                style: globals.textStyleFW400WFFLatoFS14LS1),
                            row("07203"),
                            globals.sizedBoxHeight10px,
                            Text("Телефон",
                                style: globals.textStyleFW400WFFLatoFS14LS1),
                            row("+1 908 241 21 90"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              globals.sizedBoxHeight50px,
              Text(
                "* - технику компании Apple можно отправлять только на дополнительный склад",
                style: globals.textStyleFW400WFFLatoFS14LS1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget row(String text) {
  return Row(
    children: [
      Text(
        text,
        style: globals.textStyleFW700WFFLatoFS16LS05,
      ),
      SvgPicture.asset(
        "assetsBag/assetsSvg/copyIcon.svg",
        colorFilter: const ColorFilter.mode(
          Color.fromRGBO(0, 102, 255, 1),
          BlendMode.srcATop,
        ),
      )
    ],
  );
}
