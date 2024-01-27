import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/pages/bag/store_catalog_main_screen.dart';
import 'package:from_usa/pages/home/delivery_main_screen.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main.dart';

class FinanceProfile extends StatefulWidget {
  const FinanceProfile({super.key});

  @override
  State<FinanceProfile> createState() => _FinanceProfileState();
}

class _FinanceProfileState extends State<FinanceProfile> {
  bool automaticWriteOff = false;
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
        imageLeft: 'assetsDelivery/assetsSvg/left2.svg',
        textWidget: Text(
          'Финансы',
          style: globals.textStyleFW800WFFLatoFS20LS05,
        ),
        imageRight: 'assets_profile/assetsSvg/stroke7.svg',
        svgButton: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Ваш баланс',
                style: globals.textStyleFW800WFFLatoFS20LS05,
              ),
            ),
            Container(
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                color: const Color.fromRGBO(248, 250, 253, 1),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 21.0),
                    child: Text(
                      '1000.00\$',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w800,
                        fontSize: 30.0,
                        letterSpacing: 0.5,
                        color: Color.fromRGBO(19, 59, 119, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            globals.sizedBoxHeight10px,
            Row(
              children: [
                SvgPicture.asset(
                  "assets_profile/assetsSvg/upload7.svg",
                ),
                globals.sizedBoxWidth10px,
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Вывести с баланса",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0,
                      letterSpacing: 1.0,
                      color: Color.fromRGBO(19, 59, 119, 1.0),
                    ),
                  ),
                ),
                globals.sizedBoxWidth40px,
                Expanded(
                  child: Container(
                    height: 40.0,
                    // decoration: BoxDecoration(
                    //   boxShadow: [
                    //     BoxShadow(
                    //       offset: Offset(0, 16),
                    //       blurRadius: 15,
                    //     ),
                    //   ],
                    // color: Colors.yellow,
                    // ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: const Color.fromRGBO(15, 196, 148, 1),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          'Пополнить',
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
              ],
            ),
            globals.sizedBoxHeight30px,

            Row(
              children: [
                SvgPicture.asset(
                  "assets_profile/assetsSvg/checkbox7.svg",
                  colorFilter: ColorFilter.mode(
                      automaticWriteOff
                          ? const Color.fromRGBO(238, 241, 245, 1)
                          : const Color.fromRGBO(15, 196, 148, 1),
                      BlendMode.srcATop),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        automaticWriteOff = !automaticWriteOff;
                      });
                    },
                    child: const Text(
                      "Автоматически списывать с баланса задолженности до 50\$.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    "assets_profile/assetsSvg/qustion7.svg",
                  ),
                )
              ],
            ),
            globals.sizedBoxHeight30px,
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Платежные операции",
                style: globals.textStyleFW800WFFLatoFS20LS05,
              ),
            ),
            globals.sizedBoxHeight20px,

            paymentTransactionsContainer(),
            globals.sizedBoxHeight10px,
            paymentTransactionsContainer(),
            globals.sizedBoxHeight10px,

            paymentTransactionsContainer(),

          ],
        ),
      ),
    );
  }
}

Widget paymentTransactionsContainer() {
  return Container(
    height: 100.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        10.0,
      ),
      border: Border.all(
        width: 2.0,
        color: const Color.fromRGBO(248, 250, 253, 1),
      ),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        top: 12.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "assets_profile/assetsSvg/id7.svg",
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '23424',
                style: globals.textStyleFW400WFFLatoFS14LS1,
              ),
              const SizedBox(
                width: 21,
              ),
              SvgPicture.asset(
                "assets_profile/assetsSvg/calendar7.svg",
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "13/12/2020",
                style: globals.textStyleFW400WFFLatoFS14LS1,
              ),
              const SizedBox(
                width: 13,
              ),
              SvgPicture.asset(
                "assets_profile/assetsSvg/money-bag7.svg",
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '-\$2.7',
                style: globals.textStyleFW400WFFLatoFS14LS1,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "Тип операции",
                style: globals.textStyleFW400WFFLatoFS14LS1,
              ),
              globals.sizedBoxWidth10px,
              Text(
                "Оплата заказа",
                style: globals.textStyleFW700WFFLatoFS16LS05,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "Способ",
                style: globals.textStyleFW400WFFLatoFS14LS1,
              ),
              globals.sizedBoxWidth10px,
              Text(
                "Баланс",
                style: globals.textStyleFW700WFFLatoFS16LS05,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
