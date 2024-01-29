import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/pages/bag/store_catalog_main_screen.dart';
import 'package:from_usa/pages/home/delivery_main_screen.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main.dart';

class EarnMoney extends StatelessWidget {
  const EarnMoney({super.key});

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
          'Зарабатывайте c нами',
          style: globals.textStyleFW800WFFLatoFS20LS05,
        ),
        imageRight: 'assets_profile/assetsSvg/stroke7.svg',
        svgButton: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          top: 24.0,
        ),
        child: Column(
          children: [
            ContainerFunction(
              text: "Реферальная программа",
              img: "assets_profile/assetsImg/money7.png",
              onTap: () {},
            ),
            ContainerFunction(
              text: "Расширенная\nпартнерская программа",
              onTap: () {},
            ),
            ContainerFunction(
              text: "200 грн за распаковку",
              onTap: () {},
            ),
            ContainerFunction(
              text: "Кешбэк",
              onTap: () {},
            ),
            ContainerFunction(
              text: "Фулфилмент",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerFunction extends StatelessWidget {
  final String text;
  final String? img;
  final Function()? onTap;
  const ContainerFunction({
    super.key,
    required this.text,
    this.img,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16.0,
      ),
      height: 85.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        color: const Color.fromRGBO(248, 250, 253, 1),
      ),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const SizedBox(),
              img != null
                  ? Positioned(
                      top: -54,
                      child: Image.asset(
                        img!,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 135,
            ),
            child: InkWell(
              onTap: onTap,
              child: Text(
                text,
                style: globals.textStyleFW700WFFLatoFS16LS05,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
