import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/dropdown_button.dart';
import 'package:from_usa/help_widgets/text_field_widget.dart';
import 'package:from_usa/pages/bag/store_catalog_main_screen.dart';
import 'package:from_usa/pages/home/delivery_main_screen.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main.dart';
import 'package:from_usa/pages/profile/subscreens_profile/recipient_addresses_function/selecting_the_recipients_address.dart';


class RecipientAddresses extends StatefulWidget {
  const RecipientAddresses({super.key});

  @override
  State<RecipientAddresses> createState() => _RecipientAddressesState();
}

class _RecipientAddressesState extends State<RecipientAddresses> {
  bool changeDelivery = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  bool areAllFieldsFilled() {
    return nameController.text.isNotEmpty &&
        surnameController.text.isNotEmpty &&
        phoneController.text.isNotEmpty;
  }

  @override
  void initState() {
    super.initState();
    nameController.addListener(_updateState);
    surnameController.addListener(_updateState);
    phoneController.addListener(_updateState);
  }

  void _updateState() {
    setState(() {});
  }

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

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
          'Адреса получателей',
          style: globals.textStyleFW800WFFLatoFS20LS05,
        ),
        imageRight: 'assets_profile/assetsSvg/stroke7.svg',
        svgButton: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 32.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Добавьте новый адрес для доставки и используйте его по умолчанию",
                style: globals.textStyleFW400WFFLatoFS14LS1,
              ),
              globals.sizedBoxHeight20px,
              const TextFieldWidget(
                labelText: "Название адреса (дом, офис и т.п.)",
              ),
              globals.sizedBoxHeight10px,
              const DropdownButtonWidget(
                firstChoiceValue: "Ukraine",
                twoChoiceValue: "Usa",
                threeChoiceValue: "Kanada",
                hintText: 'Страна',
              ),
              globals.sizedBoxHeight20px,
              Row(
                children: [
                  SvgPicture.asset(
                    changeDelivery
                        ? "assets_profile/assetsSvg/gray7.svg"
                        : "assets_profile/assetsSvg/radioBlue7.svg",
                  ),
                  globals.sizedBoxWidth10px,
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          changeDelivery = false;
                        },
                      );
                    },
                    child: Text(
                      "Новая Почта (до отделения)",
                      style: globals.textStyleFW700WFFLatoFS16LS05,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    changeDelivery
                        ? "assets_profile/assetsSvg/radioBlue7.svg"
                        : "assets_profile/assetsSvg/gray7.svg",
                  ),
                  globals.sizedBoxWidth10px,
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          changeDelivery = !changeDelivery;
                        },
                      );
                    },
                    child: Text(
                      "Новая Почта (адресная доставка)",
                      style: globals.textStyleFW700WFFLatoFS16LS05,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 28.0,
              ),
              TextFieldWidget(
                controller: nameController,
                labelText: "Имя",
              ),
              globals.sizedBoxHeight10px,
              TextFieldWidget(
                controller: surnameController,
                labelText: "Фамилия",
              ),
              globals.sizedBoxHeight10px,
              globals.sizedBoxWidth10px,
              TextFieldWidget(
                controller: phoneController,
                labelText: "Номер телефона",
              ),
              globals.sizedBoxHeight10px,
              const DropdownButtonWidget(
                firstChoiceValue: "Dne",
                twoChoiceValue: "Ode",
                threeChoiceValue: "Kiev",
                hintText: 'Регион',
              ),
              globals.sizedBoxHeight10px,
              const DropdownButtonWidget(
                firstChoiceValue: "Kiev",
                twoChoiceValue: "Odessa",
                threeChoiceValue: "Krivoy Rog",
                hintText: 'Город',
              ),
              changeDelivery
                  ? Column(
                      children: [
                        globals.sizedBoxHeight10px,
                        Row(
                          children: [
                            const Expanded(
                              child: TextFieldWidget(
                                labelText: "Номер дома",
                              ),
                            ),
                            globals.sizedBoxWidth10px,
                            const Expanded(
                              child: TextFieldWidget(
                                labelText: "Номер квартиры",
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  : const SizedBox(),
              globals.sizedBoxHeight30px,
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
                      backgroundColor: areAllFieldsFilled()
                          ? const Color.fromRGBO(15, 196, 148, 1)
                          : const Color.fromRGBO(238, 241, 245, 1),
                    ),
                    onPressed: () {
                      areAllFieldsFilled()
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SelectTheRecipientsAddress(),
                              ),
                            )
                          : null;
                    },
                    child: Center(
                      child: Text(
                        'Сохранить',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0,
                          color: areAllFieldsFilled()
                              ? const Color.fromRGBO(5, 98, 73, 1)
                              : const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              globals.sizedBoxHeight30px,
            ],
          ),
        ),
      ),
    );
  }
}
