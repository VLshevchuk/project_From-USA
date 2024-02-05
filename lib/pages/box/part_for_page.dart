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

class PartForPage extends StatelessWidget {
  const PartForPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyleNotActive = const TextStyle(
      fontFamily: 'Lato',
      fontWeight: FontWeight.w700,
      fontSize: 14.0,
      color: Color.fromRGBO(238, 241, 245, 1),
    );
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
                          // onPressed: (){},
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
                  "assets_profile/assetsSvg/group67372.svg",
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 27.0,
              ),
              const Text(
                'Расчет стоимости',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                  color: Color.fromRGBO(167, 176, 192, 1.0),
                ),
              ),
              const Text(
                'Готов к оплате',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                  color: Color.fromRGBO(167, 176, 192, 1.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets_profile/assetsSvg/arrow_right3.svg",
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    'Оплачено, в обработке',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0,
                      color: Color.fromRGBO(0, 102, 255, 1),
                    ),
                  ),
                ],
              ),
              Text(
                'Ожидаем доставку на склад США',
                style: textStyleNotActive,
              ),
              Text(
                'Доставлено на склад США / Европы',
                style: textStyleNotActive,
              ),
              Text(
                'Отправлено в Украине',
                style: textStyleNotActive,
              ),
              Text(
                'Поступило в Украину',
                style: textStyleNotActive,
              ),
              Text(
                'Отправлено по Украине / готово к самовывозу',
                style: textStyleNotActive,
              ),
              Text(
                'Заказ доставлен',
                style: textStyleNotActive,
              ),
              const Text(
                'Ориентировочная дата получения заказа 13.12.20',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                  color: Color.fromRGBO(0, 102, 255, 1),
                ),
              ),
              globals.sizedBoxHeight20px,
              Container(
                margin: const EdgeInsets.only(
                  left: 25.0,
                  right: 25.0,
                ),
                height: 58.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: const Color.fromRGBO(248, 250, 253, 1),
                ),
                child: const Center(
                  child: Text(
                    'TTH  XXXXXXXXXXX',
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      letterSpacing: 0.5,
                      color: Color.fromRGBO(19, 59, 119, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
