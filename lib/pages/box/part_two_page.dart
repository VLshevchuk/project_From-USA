import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/row_widget.dart';
import 'package:from_usa/pages/box/part_first_page.dart';
import 'package:from_usa/pages/bag/bag_main_page.dart';
import 'package:from_usa/pages/home/home_main_page.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main_page.dart';

import '../profile/recipient_addresses_pages/selecting_the_recipients_address_page.dart';

class PartTwoPage extends StatefulWidget {
  const PartTwoPage({super.key});

  @override
  State<PartTwoPage> createState() => _PartTwoPageState();
}

List<String> options = ["1", "2", '4', '5'];

class _PartTwoPageState extends State<PartTwoPage> {
  String currentOption = options[0];
  bool cardAddress = false;
  List<Widget> address = [];
  final TextStyle darkBlue = const TextStyle(
    fontFamily: 'Lato',
    fontWeight: FontWeight.w700,
    fontSize: 14.0,
    letterSpacing: 1.0,
    color: Color.fromRGBO(19, 59, 119, 1),
  );
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
                          "Готов к оплате",
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
                          svgPicture: 'assets_profile/assetsSvg/address7.svg',
                        ),
                        ContainerBox(
                          text: "Товары",
                          svgPicture: 'assets_profile/assetsSvg/buy698.svg',
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
                  "assets_profile/assetsSvg/group6737.svg",
                ),
              ),
            ],
          ),
          SelectingADeliveryPoint(
            darkBlue: darkBlue,
            colorBox: Colors.white,
            value: options[0],
            groupValue: currentOption[0],
            activeImage: "assets_profile/assetsSvg/radioBlue7.svg",
            inactiveImage: 'assets_profile/assetsSvg/gray7.svg',
            onChanged: (value) {
              setState(
                () {
                  currentOption = value.toString();
                },
              );
            },
            whereDelivery: "Дом",
            deliveryMethod: "Способ доставки",
            region: "Область",
            city: "Город",
            branch: "Отделение",
            name: "Имя",
            surname: "Фамилия",
            phoneNumber: "Номер телефона",
            deliveryMethodSelected: "НП(адрес. доставка)",
            regionSelected: "Полтавская",
            citySelected: "Розсошенцы  ",
            branchSelected: "№1",
            nameSelected: "Сергей",
            surnameSelected: "Билан",
            phoneNumberSelected: "0960504316",
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
              right: 25.0,
              top: 25.0,
            ),
            child: Column(
              children: [
                RowWidget(
                  mainAxisAlignment: MainAxisAlignment.start,
                  text: InkWell(
                    onTap: () {},
                    child: Text(
                      "Квартира тещи",
                      style: globals.textStyleFW800WFFLatoFS20LS05,
                    ),
                  ),
                  svgpicture: 'assets_profile/assetsSvg/gray7.svg',
                  color: const Color.fromRGBO(248, 250, 253, 1),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                RowWidget(
                  mainAxisAlignment: MainAxisAlignment.start,
                  text: InkWell(
                    onTap: () {},
                    child: Text(
                      "Офис",
                      style: globals.textStyleFW800WFFLatoFS20LS05,
                    ),
                  ),
                  svgpicture: 'assets_profile/assetsSvg/gray7.svg',
                  color: const Color.fromRGBO(248, 250, 253, 1),
                ),
                const SizedBox(
                  height: 36.0,
                ),
                RowWidget(
                  mainAxisAlignment: MainAxisAlignment.start,
                  text: InkWell(
                    onTap: () {},
                    child: Text(
                      'Добавить еще адрес',
                      style: globals.textStyleFW700WFFLatoFS14LS05,
                    ),
                  ),
                  svgpicture: "assets_profile/assetsSvg/plus7.svg",
                  color: const Color.fromRGBO(0, 102, 255, 1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
