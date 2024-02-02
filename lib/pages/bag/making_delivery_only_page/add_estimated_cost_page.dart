import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_widget.dart';
import 'package:from_usa/help_widgets/dropdown_button.dart';
import 'package:from_usa/help_widgets/green_button.dart';
import 'package:from_usa/help_widgets/row_widget.dart';
import 'package:from_usa/help_widgets/text_field_widget.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag/making_delivery_only_page/information_about_warehouses_page.dart';
import 'package:from_usa/pages/bag/making_delivery_only_page/making_delivery_only_page.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class AddEstimatedCostPage extends StatefulWidget {
  const AddEstimatedCostPage({super.key});

  @override
  State<AddEstimatedCostPage> createState() => _AddEstimatedCostStatePage();
}

class _AddEstimatedCostStatePage extends State<AddEstimatedCostPage> {
  bool change = true;
  bool addInvoice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          top: 50.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarGeneralWidget(
                backPage: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MakingDeliveryOnlyPage(),
                    ),
                  );
                },
                imageLeft: 'assetsDelivery/assetsSvg/left2.svg',
                textWidget: const TextWidgets(
                  text: "Только  доставка",
                  fontFamily: 'Lato',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(19, 59, 119, 1.0),
                  letterSpacing: 0.5,
                ),
                imageRight: 'assetsBag/assetsSvg/video.svg',
              ),
              globals.sizedBoxHeight10px,
              SvgPicture.asset(
                "assetsBag/assetsSvg/green_stripe.svg",
                colorFilter: const ColorFilter.mode(
                  Color.fromRGBO(19, 59, 119, 1),
                  BlendMode.srcATop,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              const RowWidget(
                text: TextWidgets(
                  text: "Адрес склада",
                  fontFamily: 'Lato',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(19, 59, 119, 1),
                  letterSpacing: 0.6,
                ),
                svgpicture: 'assetsBag/assetsSvg/cart_home.svg',
              ),
              globals.sizedBoxHeight30px,
              Row(
                children: [
                  change
                      ? SvgPicture.asset(
                          "assetsDelivery/assetsSvg/radioBlue.svg",
                        )
                      : SvgPicture.asset(
                          "assetsPanel/assetsSvg/radioWhite.svg",
                          colorFilter: const ColorFilter.mode(
                            Color.fromRGBO(248, 250, 253, 1),
                            BlendMode.srcATop,
                          ),
                        ),
                  globals.sizedBoxWidth20px,
                  IconButton(
                    onPressed: () {
                      setState(() {
                        change = !change;
                      });
                    },
                    icon: SvgPicture.asset(
                      "assetsBag/assetsSvg/aeroplane.svg",
                    ),
                  ),
                  globals.sizedBoxWidth20px,
                  Column(
                    children: [
                      TextWidgets(
                        text: "Авиадоставка",
                        fontFamily: 'Lato',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        color: change
                            ? const Color.fromRGBO(19, 59, 119, 1.0)
                            : const Color.fromRGBO(238, 241, 245, 1.0),
                        letterSpacing: 0.5,
                      ),
                      TextWidgets(
                        text: "4-9 рабочих дней",
                        fontFamily: 'Lato',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: change
                            ? const Color.fromRGBO(19, 59, 119, 1.0)
                            : const Color.fromRGBO(238, 241, 245, 1.0),
                        letterSpacing: 1.0,
                      ),
                    ],
                  ),
                ],
              ),
              globals.sizedBoxHeight20px,
              Row(
                children: [
                  change
                      ? SvgPicture.asset(
                          "assetsPanel/assetsSvg/radioWhite.svg",
                          colorFilter: const ColorFilter.mode(
                            Color.fromRGBO(248, 250, 253, 1),
                            BlendMode.srcATop,
                          ),
                        )
                      : SvgPicture.asset(
                          "assetsDelivery/assetsSvg/radioBlue.svg",
                        ),
                  globals.sizedBoxWidth20px,
                  IconButton(
                    onPressed: () {
                      change = false;
                      setState(() {
                        change;
                      });
                    },
                    icon: SvgPicture.asset(
                      "assetsBag/assetsSvg/boat.svg",
                    ),
                  ),
                  globals.sizedBoxWidth20px,
                  Column(
                    children: [
                      TextWidgets(
                        text: "Быстрое море",
                        fontFamily: 'Lato',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        color: change
                            ? const Color.fromRGBO(238, 241, 245, 1.0)
                            : const Color.fromRGBO(19, 59, 119, 1.0),
                        letterSpacing: 0.5,
                      ),
                      TextWidgets(
                        text: "28-35 рабочих дней",
                        fontFamily: 'Lato',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: change
                            ? const Color.fromRGBO(238, 241, 245, 1.0)
                            : const Color.fromRGBO(19, 59, 119, 1.0),
                        letterSpacing: 1.0,
                      ),
                    ],
                  ),
                ],
              ),
              globals.sizedBoxHeight30px,
              const TextFieldWidget(
                labelText: "Цена посылки (\$)",
              ),
              globals.sizedBoxHeight10px,
              const TextFieldWidget(
                labelText: "Примерный вес посылки (кг)",
              ),
              globals.sizedBoxHeight10px,
              const DropdownButtonWidget(
                firstChoiceValue: 'Car',
                twoChoiceValue: 'Air',
                threeChoiceValue: 'fleet',
              ),
              globals.sizedBoxHeight10px,
              TextFieldWidget(
                labelText: 'Введите трек- номер посылки',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assetsBag/assetsSvg/questionIcon.svg',
                  ),
                ),
              ),
              RowWidget(
                text: TextButton(
                  onPressed: () {},
                  child: const TextWidgets(
                    text: "нет трека-номера",
                    fontFamily: 'Lato',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(19, 59, 119, 1.0),
                    letterSpacing: 1.0,
                  ),
                ),
                svgpicture: "assetsPanel/assetsSvg/radioWhite.svg",
              ),
              globals.sizedBoxHeight20px,
              const RowWidget(
                text: TextWidgets(
                  text: "Добавить еще один товар",
                  fontFamily: 'Lato',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(19, 59, 119, 1.0),
                  letterSpacing: 0.5,
                ),
                svgpicture: "assetsBag/assetsSvg/greenPlus2.svg",
              ),
              globals.sizedBoxHeight20px,
              Row(
                children: [
                  const SizedBox(
                    width: 21,
                  ),
                  addInvoice == true
                      ? SvgPicture.asset(
                          "assetsBag/assetsSvg/checkGreen.svg",
                        )
                      : SvgPicture.asset(
                          "assetsBag/assetsSvg/list.svg",
                        ),
                  const SizedBox(
                    width: 21,
                  ),
                  SvgPicture.asset(
                    "assetsBag/assetsSvg/lineblue.svg",
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        addInvoice = !addInvoice;
                      });
                    },
                    child: const TextWidgets(
                      text: "Загрузите инвойс покупки",
                      fontFamily: 'Lato',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(19, 59, 119, 1.0),
                      letterSpacing: 1.0,
                    ),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      "assetsBag/assetsSvg/questionIcon.svg",
                    ),
                  ),
                ],
              ),
              globals.sizedBoxHeight20px,
              const TextFieldWideWidget(
                labelText: "Коментарий, купон",
              ),
              RowWidget(
                text: TextButton(
                  onPressed: () {},
                  child: const TextWidgets(
                      text: "Вернуться к быстрой форме",
                      fontFamily: "Lato",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(19, 59, 119, 1.0),
                      letterSpacing: 1.0),
                ),
                svgpicture: "assetsBag/assetsSvg/leftBack.svg",
              ),
              globals.sizedBoxHeight20px,
              const Align(
                alignment: Alignment.topLeft,
                child: TextWidgets(
                  text: "Стоимость услуг и доставки",
                  fontFamily: 'Lato',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(19, 59, 119, 1.0),
                  letterSpacing: 1.0,
                ),
              ),
              globals.sizedBoxHeight20px,
              Container(
                width: 328.0,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15.0),
                  color: const Color.fromRGBO(248, 250, 253, 1),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    top: 10,
                  ),
                  child: TextWidgets(
                    text: "13.15\$",
                    fontFamily: "Lato",
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(19, 59, 119, 1.0),
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              globals.sizedBoxHeight40px,
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20.0,
                ),
                child: GreenButton(
                  fillColor: const Color.fromRGBO(0, 102, 255, 1.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InformationAboutWarehousesPage(),
                      ),
                    );
                  },
                  change: false,
                  textWidget: const Text(
                    'Далее',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      fontFamily: 'Lato,',
                      fontWeight: FontWeight.w800,
                      fontSize: 14.0,
                      letterSpacing: 1.0,
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
