import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/pages/bag/main_page.dart';
import 'package:from_usa/pages/home/main_page.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main.dart';

class SelectTheRecipientsAddress extends StatefulWidget {
  const SelectTheRecipientsAddress({super.key});

  @override
  State<SelectTheRecipientsAddress> createState() =>
      _SelectTheRecipientsAddressState();
}

List<String> options = ["Po1", "Oo2", '3','ds'];

class _SelectTheRecipientsAddressState
    extends State<SelectTheRecipientsAddress> {
  String currentOption = options[0];
  bool cardAddress = false;
  List<Widget> address = [];
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
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              globals.sizedBoxHeight10px,
              MyWidget(
                value: options[1],
                groupValue: currentOption,
                activeImage: "assets_profile/assetsSvg/radioBlue7.svg",
                inactiveImage: 'assets_profile/assetsSvg/gray7.svg',
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                  });
                },
                whereDelivery: "Офис",
                deliveryMethod: "Способ доставки",
                region: "Область",
                city: "Город",
                branch: "Отделение",
                name: "Имя",
                surname: "Фамилия",
                phoneNumber: "Номер телефона",
                deliveryMethodSelected: "НП (адресная доставка)",
                regionSelected: "Киевская",
                citySelected: "Киев ",
                branchSelected: "№136",
                nameSelected: "Сергей",
                surnameSelected: "Билан",
                phoneNumberSelected: "0960504316",
              ),
              globals.sizedBoxHeight10px,
              MyWidget(
                value: options[2],
                groupValue: currentOption,
                activeImage: "assets_profile/assetsSvg/radioBlue7.svg",
                inactiveImage: 'assets_profile/assetsSvg/gray7.svg',
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                  });
                },
                whereDelivery: "Дом",
                deliveryMethod: "Способ доставки",
                region: "Область",
                city: "Город",
                branch: "Отделение",
                name: "Имя",
                surname: "Фамилия",
                phoneNumber: "Номер телефона",
                deliveryMethodSelected: "НП (до отделения)",
                regionSelected: "Полтавская",
                citySelected: "Розсошенцы  ",
                branchSelected: "№1",
                nameSelected: "Сергей",
                surnameSelected: "Билан",
                phoneNumberSelected: "0960504316",
              ),
               cardAddress
                ? Padding(
                  padding: const EdgeInsets.only(top: 10.0,),
                  child: Column(
                      children: address,
                    ),
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
                          cardAddress = true;
                          address.add(
                            MyWidget(
                              value: options[3],
                              groupValue: currentOption,
                              activeImage:
                                  "assets_profile/assetsSvg/radioBlue7.svg",
                              inactiveImage:
                                  'assets_profile/assetsSvg/gray7.svg',
                              onChanged: (value) {
                                setState(() {
                                  currentOption = value.toString();
                                });
                              },
                              whereDelivery: "Дом",
                              deliveryMethod: "Способ доставки",
                              region: "Область",
                              city: "Город",
                              branch: "Отделение",
                              name: "Имя",
                              surname: "Фамилия",
                              phoneNumber: "Номер телефона",
                              deliveryMethodSelected: "НП (до отделения)",
                              regionSelected: "Полтавская",
                              citySelected: "Розсошенцы  ",
                              branchSelected: "№1",
                              nameSelected: "Сергей",
                              surnameSelected: "Билан",
                              phoneNumberSelected: "0960504316",
                            ),
                          );
                          print("aaaa$address");
                        },
                      );
                    },
                    child: const Text(
                      'Добавить еще адрес',
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
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget<T> extends StatelessWidget {
  final String whereDelivery;

  final String deliveryMethod;
  final String region;
  final String city;
  final String branch;
  final String name;
  final String surname;
  final String phoneNumber;

  final String deliveryMethodSelected;
  final String regionSelected;
  final String citySelected;
  final String branchSelected;
  final String nameSelected;
  final String surnameSelected;
  final String phoneNumberSelected;
  final T value;
  final T groupValue;
  final String activeImage;
  final String inactiveImage;
  final ValueChanged<T> onChanged;

  const MyWidget({
    super.key,
    required this.whereDelivery,
    required this.deliveryMethod,
    required this.region,
    required this.city,
    required this.branch,
    required this.name,
    required this.surname,
    required this.phoneNumber,
    required this.deliveryMethodSelected,
    required this.regionSelected,
    required this.citySelected,
    required this.branchSelected,
    required this.nameSelected,
    required this.surnameSelected,
    required this.phoneNumberSelected,
    required this.value,
    required this.groupValue,
    required this.activeImage,
    required this.inactiveImage,
    required this.onChanged,
  });

  final TextStyle textStyle = const TextStyle(
    fontFamily: 'Lato',
    fontWeight: FontWeight.w700,
    fontSize: 14.0,
    letterSpacing: 1.0,
    color: Color.fromRGBO(0, 102, 255, 1.0),
  );

  @override
  Widget build(BuildContext context) {
    bool isSelected = value == groupValue;
    return Container(
      height: 272.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        color: const Color.fromRGBO(248, 250, 253, 1),
      ),
      child: ListTile(
        onTap: () {
          
          onChanged(value);
        },
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 25.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        // selectDelivery
                        isSelected ? activeImage : inactiveImage,
                        // : "assets_profile/assetsSvg/radioBlue7.svg",
                      ),
                      globals.sizedBoxWidth10px,
                      InkWell(
                        onTap: () {},
                        child: Text(
                          whereDelivery,
                          style: globals.textStyleFW400WFFLatoFS14LS1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 17.0,
                  ),
                  Text(deliveryMethod,
                      style: globals.textStyleFW400WFFLatoFS14LS1),
                  globals.sizedBoxHeight6px,
                  Text(region, style: globals.textStyleFW400WFFLatoFS14LS1),
                  globals.sizedBoxHeight6px,
                  Text(city, style: globals.textStyleFW400WFFLatoFS14LS1),
                  globals.sizedBoxHeight6px,
                  Text(branch, style: globals.textStyleFW400WFFLatoFS14LS1),
                  globals.sizedBoxHeight6px,
                  Text(name, style: globals.textStyleFW400WFFLatoFS14LS1),
                  globals.sizedBoxHeight6px,
                  Text(surname, style: globals.textStyleFW400WFFLatoFS14LS1),
                  globals.sizedBoxHeight6px,
                  Text(phoneNumber,
                      style: globals.textStyleFW400WFFLatoFS14LS1),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  top: 25.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      "assets_profile/assetsSvg/edit_quare7.svg",
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Text(deliveryMethodSelected, style: textStyle),
                    globals.sizedBoxHeight6px,
                    Text(regionSelected, style: textStyle),
                    globals.sizedBoxHeight6px,
                    Text(citySelected, style: textStyle),
                    globals.sizedBoxHeight6px,
                    Text(branchSelected, style: textStyle),
                    globals.sizedBoxHeight6px,
                    Text(nameSelected, style: textStyle),
                    globals.sizedBoxHeight6px,
                    Text(surnameSelected, style: textStyle),
                    globals.sizedBoxHeight6px,
                    Text(phoneNumberSelected, style: textStyle),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
