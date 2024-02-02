import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/pages/bag/main_page.dart';
import 'package:from_usa/pages/home/main_page.dart';

import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main.dart';

class SelectCard extends StatefulWidget {
  const SelectCard({super.key});

  @override
  State<SelectCard> createState() => _SelectCardState();
}

class _SelectCardState extends State<SelectCard> {
  bool changeActiveCard = false;
  bool switchSelect = false;
  bool cardAdd = false;
  List<Widget> cards = [];

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
          'Бансковские карты',
          style: globals.textStyleFW800WFFLatoFS20LS05,
        ),
        imageRight: 'assets_profile/assetsSvg/stroke7.svg',
        svgButton: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          children: [
            Container(
              height: 83.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                color: const Color.fromRGBO(248, 250, 253, 1),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 21.0,
                      right: 16.0,
                    ),
                    child: SvgPicture.asset(
                      changeActiveCard
                          ? "assets_profile/assetsSvg/gray7.svg"
                          : "assets_profile/assetsSvg/radioBlue7.svg",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          changeActiveCard = false;
                        },
                      );
                    },
                    child: Text(
                      "5168 75 .... 8642",
                      style: globals.textStyleFW800WFFLatoFS20LS05,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 31.0,
                    ),
                    child: SvgPicture.asset(
                      "assets_profile/assetsSvg/master.svg",
                    ),
                  ),
                ],
              ),
            ),
            globals.sizedBoxHeight10px,
            Container(
              height: 83.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                color: const Color.fromRGBO(248, 250, 253, 1),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 21.0,
                      right: 16.0,
                    ),
                    child: SvgPicture.asset(
                      changeActiveCard
                          ? "assets_profile/assetsSvg/radioBlue7.svg"
                          : "assets_profile/assetsSvg/gray7.svg",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          changeActiveCard = !changeActiveCard;
                        },
                      );
                    },
                    child: Text(
                      "5674 88 .... 9876",
                      style: globals.textStyleFW800WFFLatoFS20LS05,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 31.0,
                    ),
                    child: SvgPicture.asset(
                      "assets_profile/assetsSvg/visa.svg",
                    ),
                  ),
                ],
              ),
            ),
            cardAdd
                ? Column(
                    children: cards,
                  )
                : const SizedBox(),
            globals.sizedBoxHeight20px,
            Row(
              children: [
                SvgPicture.asset(
                  "assets_profile/assetsSvg/plus7.svg",
                ),
                globals.sizedBoxWidth10px,
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        cardAdd = true;
                        cards.add(
                          addCard(),
                        );
                        print("aaaa$cards");
                      },
                    );
                  },
                  child: const Text(
                    'Добавить еще карту',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0,
                      color: Color.fromRGBO(19, 59, 119, 1.0),
                    ),
                  ),
                )
              ],
            ),
            globals.sizedBoxHeight30px,
            Row(
              children: [
                SvgPicture.asset(
                  "assets_profile/assetsSvg/qustion7.svg",
                ),
                globals.sizedBoxWidth10px,
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Автосписывание по умолчанию',
                    style: globals.textStyleFW400WFFLatoFS14LS1,
                  ),
                ),
                Switch(
                  inactiveThumbColor: const Color.fromRGBO(252, 252, 252, 1),
                  inactiveTrackColor: const Color.fromRGBO(238, 241, 245, 1),
                  value: switchSelect,
                  onChanged: (value) {
                    setState(
                      () {
                        switchSelect = value;
                      },
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget addCard() {
  String generateRandomNumberText() {
    Random random = Random();
    return "${random.nextInt(
      10,
    )}${random.nextInt(
      10,
    )}${random.nextInt(
      10,
    )}${random.nextInt(
      10,
    )} ${random.nextInt(
      10,
    )}${random.nextInt(
      10,
    )} .... ${random.nextInt(
      10,
    )}${random.nextInt(
      10,
    )}${random.nextInt(
      10,
    )}${random.nextInt(
      10,
    )}";
  }

  return Container(
    height: 83.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        10.0,
      ),
      color: const Color.fromRGBO(248, 250, 253, 1),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 21.0,
            right: 16.0,
          ),
          child: SvgPicture.asset(
            "assets_profile/assetsSvg/gray7.svg",
          ),
        ),
        Text(
          generateRandomNumberText(),
          style: globals.textStyleFW800WFFLatoFS20LS05,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 31.0,
          ),
          child: SvgPicture.asset(
            "assets_profile/assetsSvg/visa.svg",
          ),
        ),
      ],
    ),
  );
}
