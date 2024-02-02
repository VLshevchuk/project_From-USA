import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/row_widget.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag/making_apurchase_and_delivery_page/widgets/app_bar_widget.dart';
import 'package:from_usa/pages/bag/making_apurchase_and_delivery_page/widgets/bottom_button_widget.dart';
import 'package:from_usa/pages/bag/making_apurchase_and_delivery_page/widgets/estimated_cost.dart';
import 'package:from_usa/pages/bag/making_apurchase_and_delivery_page/widgets/input_fields_widgets.dart';

import 'package:from_usa/pages/bag/making_apurchase_and_delivery_page/widgets/radio_button_delivery_widget.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class MakingAPurchaseAndDelivery extends StatelessWidget {
  const MakingAPurchaseAndDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 25.0, left: 25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              globals.sizedBoxHeight50px,
              const AppBarWidget(),
              globals.sizedBoxHeight10px,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assetsBag/assetsSvg/green_stripe.svg',
                  ),
                ],
              ),
              globals.sizedBoxHeight20px,
              const RadioButtonDeliveryWidget(),
              globals.sizedBoxHeight30px,
              const InputFieldsWidgets(),
              RowWidget(
                text: TextButton(
                  onPressed: () {},
                  child: const TextLato14pxW700(
                    text: "Добавить еще один товар в просчет",
                  ),
                ),
                svgpicture: "assetsBag/assetsSvg/plusBlue.svg",
                color: const Color.fromRGBO(0, 102, 255, 1),
              ),
              RowWidget(
                text: TextButton(
                  onPressed: () {},
                  child: const TextLato14pxW700(
                    text: "Вернуться к быстрой форме",
                  ),
                ),
                svgpicture: "assetsBag/assetsSvg/square.svg",
                color: const Color.fromRGBO(0, 102, 255, 1),
              ),
              const SizedBox(
                height: 57.0,
              ),
              const Column(
                children: [
                  TextWidgets(
                    text: 'Ориентировочная стоимость товара с доставкой: ',
                    fontFamily: "Lato",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(19, 59, 119, 1.0),
                    letterSpacing: 1.0,
                  ),
                ],
              ),
              globals.sizedBoxHeight20px,
              const EstimatedCost(),
              globals.sizedBoxHeight30px,
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 36.0,
                ),
                child: BottomButtonWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
