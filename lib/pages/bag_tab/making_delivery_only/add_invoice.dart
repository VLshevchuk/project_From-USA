import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/dropdown_button.dart';
import 'package:from_usa/help_widgets/row_widget.dart';
import 'package:from_usa/help_widgets/text_field_widget.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag_tab/making_delivery_only/add_estimated_cost.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class AddInvoice extends StatefulWidget {
  const AddInvoice({super.key});

  @override
  State<AddInvoice> createState() => _AddInvoiceState();
}

class _AddInvoiceState extends State<AddInvoice> {
  bool change = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        globals.sizedBoxHeight20px,
        Row(
          children: [
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
        globals.sizedBoxHeight30px,
        const TextFieldWideWidget(
          labelText: "Коментарий, купон",
        ),
        globals.sizedBoxHeight10px,
        const TextFieldWidget(
          labelText: "Примерный вес посылки (кг)",
        ),
        globals.sizedBoxHeight10px,
        const TextFieldWidget(
          labelText: "Цена посылки (\$)",
        ),
        globals.sizedBoxHeight10px,
        const DropdownButtonWidget(
          firstChoiceValue: 'first',
          twoChoiceValue: 'two',
          threeChoiceValue: 'three',
        ),
        globals.sizedBoxHeight10px,
        RowWidget(
          text: TextButton(
            onPressed: () {},
            child: const TextLato14pxW700(
              text: "Добавить еще один трек номер",
            ),
          ),
          svgpicture: "assetsBag/assetsSvg/plusBlue.svg",
          color: const Color.fromRGBO(0, 102, 255, 1),
        ),
        RowWidget(
          text: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddEstimatedCost(),
                ),
              );
            },
            child: const TextLato14pxW700(
              text: "Ориентировочная стоимость",
            ),
          ),
          svgpicture: "assetsDelivery/assetsSvg/+-.svg",
          color: const Color.fromRGBO(0, 102, 255, 1),
        ),
      ],
    );
  }
}
