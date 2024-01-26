import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/subscreens_profile/correction_profile/correction_profile.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        profileContainer(context),
        const SizedBox(
          height: 20.0,
        ),
        balanceContainer(),
        orderLater(),
        const SizedBox(
          height: 12.0,
        ),
        functionTabs(),
        const SizedBox(
          height: 68.0,
        ),
        helpColumn(),
        const SizedBox(
          height: 18.0,
        ),
      ],
    );
  }
}

Widget profileContainer(BuildContext context) {
  return Container(
    height: 75.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(42.0),
      color: const Color.fromRGBO(248, 250, 253, 1),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets_profile/assetsImg/ellipse7.png",
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Веленчук Сергiй",
                  style: globals.textStyleFW800WFFLatoFS20LS05,
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  "velenchuk18@gmail.com",
                  style: TextStyle(
                    fontFamily: "Opens",
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: Color.fromRGBO(19, 59, 119, 1),
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>const CorrectionProfile(),
              ),
            );
          },
          icon: SvgPicture.asset(
            "assets_profile/assetsSvg/edit_quare7.svg",
          ),
        ),
      ],
    ),
  );
}

Widget balanceContainer() {
  return Container(
    height: 75.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: const Color.fromRGBO(248, 250, 253, 1),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 18,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Баланс',
                      style: globals.textStyleFW700WFFLatoFS16LS05,
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      '358.93 \$',
                      style: TextStyle(
                        fontFamily: 'Opens',
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        color: Color.fromRGBO(19, 196, 148, 1.0),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      ' \\ 11154 грн',
                      style: TextStyle(
                        fontFamily: "Opens",
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        color: Color.fromRGBO(19, 59, 119, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 17,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 17),
                height: 40.0,
                width: double.maxFinite,
                // decoration: BoxDecoration(boxShadow: [
                //   BoxShadow(
                //     offset: Offset(0, 16),
                //     blurRadius: 15,
                //   ),
                // ]),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(15, 196, 148, 1),
                  ),
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
            ],
          ),
        ),
      ],
    ),
  );
}

Widget orderLater() {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: Text(
              "Хочу заказать позже",
              style: globals.textStyleFW700WFFLatoFS16LS05,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Посмотреть все  >',
              style: TextStyle(
                fontFamily: 'Opens',
                fontWeight: FontWeight.w400,
                fontSize: 12.0,
                color: Color.fromRGBO(19, 59, 119, 1.0),
              ),
            ),
          ),
        ],
      ),
      Container(
        height: 40.0,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(248, 250, 253, 1),
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        child: Row(
          children: [
            globals.sizedBoxWidth10px,
            Image.asset("assets_profile/assetsImg/1image7.png"),
            globals.sizedBoxWidth10px,
            const Text(
              "https://www.ebay.com/itm/Casio-G...",
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  letterSpacing: 1.0,
                  color: Color.fromRGBO(19, 59, 119, 0.5)),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 5.0,
      ),
      Container(
        height: 40.0,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(248, 250, 253, 1),
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              "assets_profile/assetsImg/2image7.png",
            ),
            const SizedBox(
              width: 3,
            ),
            const Text(
              "https://www.ebay.com/itm/Rohosto...",
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  letterSpacing: 1.0,
                  color: Color.fromRGBO(19, 59, 119, 0.5)),
            ),
          ],
        ),
      ),
      globals.sizedBoxHeight10px,
      Container(
        height: 40.0,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(248, 250, 253, 1),
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        child: Row(
          children: [
            globals.sizedBoxWidth10px,
            Image.asset("assets_profile/assetsImg/3image7.png"),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "https://www.ebay.com/itm/Cetyr-ro...",
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  letterSpacing: 1.0,
                  color: Color.fromRGBO(19, 59, 119, 0.5)),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget functionTabs() {
  return Column(
    children: [
      rowTabs(
        "assets_profile/assetsSvg/wallet7.svg",
        "Финансы",
        () {},
      ),
      rowTabs(
        "assets_profile/assetsSvg/credit-card7.svg",
        "Банковские карты",
        () {},
      ),
      rowTabs(
        "assets_profile/assetsSvg/location7.svg",
        "Адреса получателей",
        () {},
      ),
      rowTabs(
        "assets_profile/assetsSvg/address7.svg",
        "Адреса складов",
        () {},
      ),
      rowTabs(
        "assets_profile/assetsSvg/graph7.svg",
        "Зарабатывайте c нами",
        () {},
      ),
      rowTabs(
        "assets_profile/assetsSvg/list7.svg",
        "Новости",
        () {},
      ),
    ],
  );
}

Widget helpColumn() {
  return Column(
    children: [
      SizedBox(
        height: 25.0,
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Text(
                'Справочник',
                style: globals.textStyleFW400WFFLatoFS14LS1,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 16.0,
      ),
      Row(
        children: [
          InkWell(
            onTap: () {},
            child: Text(
              'Правила и условия',
              style: globals.textStyleFW400WFFLatoFS14LS1,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 16.0,
      ),
      Row(
        children: [
          InkWell(
            onTap: () {},
            child: Text(
              'Политика конфиденциальности',
              style: globals.textStyleFW400WFFLatoFS14LS1,
            ),
          ),
        ],
      ),
    ],
  );
}

Padding rowTabs(String svg, String text, Function()? onPressed) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 18.0,
    ),
    child: Row(
      children: [
        SvgPicture.asset(
          svg,
        ),
        const SizedBox(
          width: 16.0,
        ),
        InkWell(
          onTap: onPressed,
          child: Text(
            text,
            style: globals.textStyleFW700WFFLatoFS16LS05,
          ),
        ),
      ],
    ),
  );
}
