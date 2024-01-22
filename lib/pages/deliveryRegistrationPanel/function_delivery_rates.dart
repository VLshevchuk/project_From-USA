import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_appBar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag_tab/store_catalog_main_screen.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class FunctionDeliveryRates extends StatefulWidget {
  const FunctionDeliveryRates({super.key});

  @override
  State<FunctionDeliveryRates> createState() => _FunctionDeliveryRatesState();
}

TextStyle textStyle = const TextStyle(
  fontFamily: 'Lato',
  fontWeight: FontWeight.w700,
  fontSize: 16.0,
  letterSpacing: 0.5,
  color: Color.fromRGBO(19, 59, 119, 1.0),
);
TextStyle notActive = const TextStyle(
  fontFamily: 'Lato',
  fontWeight: FontWeight.w400,
  fontSize: 14.0,
  letterSpacing: 1.0,
  color: Color.fromRGBO(167, 176, 192, 1.0),
);

class _FunctionDeliveryRatesState extends State<FunctionDeliveryRates> {
  String? _dropdownValueCountry;
  String? _dropdownValueDelivery;

  final TextEditingController _savedValueWeightParcels =
      TextEditingController();
  final TextEditingController _controllerprice = TextEditingController();

  void dropdownCountry(String? value) {
    if (value is String) {
      setState(() {
        _dropdownValueCountry = value;
      });
    }
  }

  void dropdownValueDelivery(String? value) {
    if (value is String) {
      setState(() {
        _dropdownValueDelivery = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
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
          imageTwo: "assetsBag/assetsSvg/activeBag.svg",
          imageThree: "assetsBag/assetsSvg/invoice.svg",
          imageFor: "assetsDelivery/assetsSvg/profile.svg",
          onPressedFirst: () {},
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
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
        ),
        child: Column(
          children: [
            globals.sizedBoxHeight50px,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                  },
                  icon: SvgPicture.asset(
                    'assetsDelivery/assetsSvg/left2.svg',
                  ),
                ),
                const TextWidgets(
                    text: "Тарифы",
                    fontFamily: 'Lato',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(19, 59, 119, 1.0),
                    letterSpacing: 0.5),
                SvgPicture.asset(
                  'assetsDelivery/assetsSvg/vectorD.svg',
                ),
              ],
            ),
            globals.sizedBoxHeight10px,
            Row(
              children: [
                globals.sizedBoxWidth20px,
                SvgPicture.asset("assetsPanel/assetsSvg/radio.svg"),
                globals.sizedBoxWidth10px,
                const TextLato40pxW800(
                  text: 'Покупка и доставка',
                  customSize: 20.0,
                )
              ],
            ),
            globals.sizedBoxHeight30px,
            Row(
              children: [
                globals.sizedBoxWidth20px,
                SvgPicture.asset(
                  "assetsPanel/assetsSvg/radioWhite.svg",
                  colorFilter: const ColorFilter.mode(
                    Color.fromRGBO(247, 243, 244, 1),
                    BlendMode.srcATop,
                  ),
                ),
                const TextWidgets(
                  text: "Только доставка",
                  fontFamily: 'Lato',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(238, 241, 245, 1.0),
                  letterSpacing: 0.5,
                ),
              ],
            ),
            //DropdownButton Selected Country
            globals.sizedBoxHeight30px,
            Container(
              width: double.infinity,
              height: 56.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(15.0),
                color: const Color.fromRGBO(248, 250, 253, 1),
              ),
              child: DropdownButton(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                isExpanded: true,
                items: [
                  DropdownMenuItem(
                    value: '1',
                    child: Text(
                      'США',
                      style: textStyle,
                    ),
                  ),
                  DropdownMenuItem(
                    value: '2',
                    child: Text(
                      'Украина',
                      style: textStyle,
                    ),
                  ),
                  DropdownMenuItem(
                    value: '3',
                    child: Text(
                      'Канада',
                      style: textStyle,
                    ),
                  ),
                ],
                hint: Text(
                  'Выберите страну отправки',
                  style: notActive,
                ),
                onChanged: dropdownCountry,
                value: _dropdownValueCountry,
                underline: Container(
                  height: 0,
                ),
              ),
            ),
            //            //DropdownButton Selected Delivery
            globals.sizedBoxHeight10px,
            Container(
              width: double.infinity,
              height: 56.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(15.0),
                color: const Color.fromRGBO(248, 250, 253, 1),
              ),
              child: DropdownButton(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                isExpanded: true,
                items: [
                  DropdownMenuItem(
                    value: '11',
                    child: Text(
                      'Авиа доставка',
                      style: textStyle,
                    ),
                  ),
                  DropdownMenuItem(
                    value: '22',
                    child: Text(
                      'Морская доставка',
                      style: textStyle,
                    ),
                  ),
                  DropdownMenuItem(
                    value: '33',
                    child: Text(
                      'Сухопутная доставка',
                      style: textStyle,
                    ),
                  ),
                ],
                hint: Text(
                  'Выберите способ доставки',
                  style: notActive,
                ),
                onChanged: dropdownValueDelivery,
                value: _dropdownValueDelivery,
                underline: Container(
                  height: 0,
                ),
              ),
            ),
            globals.sizedBoxHeight10px,
            Container(
              width: double.infinity,
              height: 56.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(15.0),
                color: const Color.fromRGBO(248, 250, 253, 1),
              ),
              child: TextField(
                controller: _savedValueWeightParcels,
                decoration: const InputDecoration(
                  labelText: 'Примерный вес посылки',
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                ),
              ),
            ),
            globals.sizedBoxHeight10px,
            Container(
              width: double.infinity,
              height: 56.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(15.0),
                color: const Color.fromRGBO(248, 250, 253, 1),
              ),
              child: TextField(
                controller: _controllerprice,
                decoration: const InputDecoration(
                  labelText: 'Общая стоимость',
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                ),
              ),
            ),
            globals.sizedBoxHeight20px,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextLato14pxW400(
                  text: "Услуги доставки:",
                ),
                Text(
                  '59.50\$',
                  style: textStyle,
                )
              ],
            ),
            globals.sizedBoxHeight10px,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextLato14pxW400(text: "Страховка:"),
                Text(
                  '2.85\$',
                  style: textStyle,
                ),
              ],
            ),
            globals.sizedBoxHeight10px,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextLato14pxW400(text: "Прием и оформление:"),
                Text(
                  '0.85\$',
                  style: textStyle,
                ),
              ],
            ),
            globals.sizedBoxHeight10px,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextLato14pxW400(text: "Комиссия услуги:"),
                Text(
                  '0.85\$',
                  style: textStyle,
                ),
              ],
            ),
            globals.sizedBoxHeight10px,
            const TextLato14pxW400(text: '''Ориентировачная стоимость товара с
доставкой:'''),
            globals.sizedBoxHeight10px,

            Container(
              width: double.infinity,
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
                  text: "220.84\$",
                  fontFamily: "Lato",
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(19, 59, 119, 1.0),
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
