import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/text_field_widget.dart';
import 'package:from_usa/pages/bag/bag_main_page.dart';
import 'package:from_usa/pages/home/home_main_page.dart';
import 'package:from_usa/pages/profile/profile_main_page.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class CorrectionProfilePage extends StatefulWidget {
  const CorrectionProfilePage({super.key});

  @override
  State<CorrectionProfilePage> createState() => _CorrectionProfilePageState();
}

class _CorrectionProfilePageState extends State<CorrectionProfilePage> {
  bool genderChange = false;

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
          'Личные данные',
          style: globals.textStyleFW800WFFLatoFS20LS05,
        ),
        imageRight: 'assets_profile/assetsSvg/stroke7.svg',
        svgButton: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          top: 18.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TextFieldWidget(
                labelText: 'Ваше имя (Кириллица)*',
              ),
              globals.sizedBoxHeight10px,
              const TextFieldWidget(
                labelText: 'Фамилия *',
              ),
              globals.sizedBoxHeight10px,
              const TextFieldWidget(
                labelText: 'Дата рождения',
              ),
              globals.sizedBoxHeight20px,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Пол",
                  style: globals.textStyleFW800WFFLatoFS20LS05,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets_profile/assetsSvg/male-sign-blue7.svg",
                    colorFilter: ColorFilter.mode(
                      genderChange
                          ? const Color.fromRGBO(238, 241, 245, 1.0)
                          : const Color.fromRGBO(0, 102, 255, 1.0),
                      BlendMode.srcATop,
                    ),
                  ),
                  globals.sizedBoxWidth10px,
                  InkWell(
                    onTap: () {
                      setState(() {
                        genderChange = false;
                      });
                    },
                    child: Text(
                      "Мужчина",
                      style: globals.textStyleFW700WFFLatoFS16LS05,
                    ),
                  ),
                  const SizedBox(
                    width: 33.0,
                  ),
                  SvgPicture.asset(
                    "assets_profile/assetsSvg/femenine7.svg",
                    colorFilter: ColorFilter.mode(
                      genderChange
                          ? Colors.pink
                          : const Color.fromRGBO(238, 241, 245, 1.0),
                      BlendMode.srcATop,
                    ),
                  ),
                  globals.sizedBoxWidth10px,
                  InkWell(
                    onTap: () {
                      setState(() {
                        genderChange = true;
                      });
                    },
                    child: Text(
                      "Женщина",
                      style: globals.textStyleFW700WFFLatoFS16LS05,
                    ),
                  ),
                ],
              ),
              globals.sizedBoxHeight30px,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Контактная информация",
                  style: globals.textStyleFW800WFFLatoFS20LS05,
                ),
              ),
              globals.sizedBoxHeight20px,
              const TextFieldWidget(
                labelText: 'Номер телефона*',
              ),
              globals.sizedBoxHeight10px,
              const TextFieldWidget(
                labelText: 'E-mail*',
              ),
              globals.sizedBoxHeight30px,
              Row(
                children: [
                  SvgPicture.asset(
                    "assets_profile/assetsSvg/password7.svg",
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Изменить пароль',
                      style: globals.textStyleFW700WFFLatoFS16LS05,
                    ),
                  ),
                ],
              ),
              globals.sizedBoxHeight20px,
              Row(
                children: [
                  SvgPicture.asset(
                    "assets_profile/assetsSvg/logout7.svg",
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Выйти',
                      style: globals.textStyleFW700WFFLatoFS16LS05,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
