import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class RadioButtonDeliveryWidget extends StatefulWidget {
  const RadioButtonDeliveryWidget({super.key});

  @override
  State<RadioButtonDeliveryWidget> createState() =>
      _RadioButtonDeliveryWidgetState();
}

class _RadioButtonDeliveryWidgetState extends State<RadioButtonDeliveryWidget> {
  bool change = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            globals.sizedBoxWidth20px,
            change
                ? SvgPicture.asset("assetsDelivery/assetsSvg/radioBlue.svg")
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
                icon: SvgPicture.asset("assetsBag/assetsSvg/aeroplane.svg")),
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
            globals.sizedBoxWidth20px,
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
                icon: SvgPicture.asset("assetsBag/assetsSvg/boat.svg")),
            globals.sizedBoxWidth20px,
            Column(
              children: [
                TextWidgets(
                  text: "Бысторое море",
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
      ],
    );
  }
}
