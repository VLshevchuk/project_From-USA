import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/text_field_widget.dart';
import 'package:from_usa/pages/bag/main_page.dart';
import 'package:from_usa/pages/home/main_page.dart';

import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/botom_app_bar/profile/pages/bank_cards_function/select_card.dart';
import 'package:from_usa/pages/profile/profile_main.dart';

class BankCards extends StatelessWidget {
  const BankCards({super.key});

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
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          top: 32.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Для добавления карты, как средства платежа введите ее реквизиты",
                style: globals.textStyleFW400WFFLatoFS14LS1,
              ),
              const SizedBox(
                height: 47.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Номер карты',
                  style: globals.textStyleFW400WFFLatoFS14LS1,
                ),
              ),
              TextFieldWidget(
                labelText: '',
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(
                    right: 25.0,
                  ),
                  child: SvgPicture.asset(
                    "assets_profile/assetsSvg/card7.svg",
                    fit: BoxFit.none,
                  ),
                ),
              ),
              globals.sizedBoxHeight20px,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Срок дествия',
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                        ),
                        const TextFieldWidget(
                          labelText: 'ММ/ГГ',
                        ),
                      ],
                    ),
                  ),
                  globals.sizedBoxWidth20px,
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'CVV',
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                        ),
                        const TextFieldWidget(
                          labelText: 'ХХХ',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 350,
              ),
              Center(
                child: Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(
                        double.infinity,
                        56.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                      backgroundColor: const Color.fromRGBO(15, 196, 148, 1),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectCard(),
                        ),
                      );
                    },
                    child: const Center(
                      child: Text(
                        'Сохранить',
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
        ),
      ),
    );
  }
}
