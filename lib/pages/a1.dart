import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/row_widget.dart';
import 'package:from_usa/pages/bag/main_page.dart';
import 'package:from_usa/pages/home/main_page.dart';

import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main.dart';

class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

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
      body: Column(
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
                      color: const Color.fromRGBO(238, 241, 245, 1),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          style: globals.textStyleFW700WFFLatoFS14LS05,
                          "Расчет стоимости",
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
                          text: "Отслеживание",
                          svgPicture: 'assets_profile/assetsSvg/tracking.svg',
                          // onPressed: (){},
                        ),
                        ContainerBox(
                          text: "Адрес доставки",
                          svgPicture: 'assets_profile/assetsSvg/tracking.svg',
                        ),
                        ContainerBox(
                          text: "Товары",
                          svgPicture: 'assets_profile/assetsSvg/tracking.svg',
                        ),
                        ContainerBox(
                          text: "Товары",
                          svgPicture: 'assets_profile/assetsSvg/tracking.svg',
                        ),
                        ContainerBox(
                          text: "Товары",
                          svgPicture: 'assets_profile/assetsSvg/tracking.svg',
                        ),
                        ContainerBox(
                          text: "Товары",
                          svgPicture: 'assets_profile/assetsSvg/tracking.svg',
                        ),
                        ContainerBox(
                          text: "Товары",
                          svgPicture: 'assets_profile/assetsSvg/tracking.svg',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          Image.asset(
            "assets_profile/assetsImg/Addressrafiki.png",
          ),
          const SizedBox(
            height: 14.0,
          ),
          RowWidget(
            mainAxisAlignment: MainAxisAlignment.center,
            text: InkWell(
              onTap: () {},
              child: Text(
                'Добавить адрес доставки',
                style: globals.textStyleFW700WFFLatoFS14LS05,
              ),
            ),
            svgpicture: "assets_profile/assetsSvg/plus7.svg",
            color: const Color.fromRGBO(0, 102, 255, 1),
          ),
        ],
      ),
    );
  }
}

class ContainerBox extends StatelessWidget {
  final String svgPicture;
  final String text;
  final Function()? onTap;
  const ContainerBox({
    super.key,
    required this.svgPicture,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: Container(
        height: 80.0,
        width: 148.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(
            10.0,
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 13.0,
            ),
            SvgPicture.asset(
              svgPicture,
            ),
            globals.sizedBoxHeight10px,
            InkWell(
              // onTap: onPressed,
              child: Text(
                text,
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w600,
                  fontSize: 12.0,
                  letterSpacing: 1.0,
                  color: Color.fromRGBO(19, 59, 119, 1.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
