import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/green_button.dart';
import 'package:from_usa/help_widgets/row_widget.dart';
import 'package:from_usa/help_widgets/text_field_widget.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag/making_apurchase_and_delivery_page/making_a_purchase_and_delivery_page.dart';
import 'package:from_usa/pages/bag/product_selection_page.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class FunctionBuyAndDelivery extends StatelessWidget {
  const FunctionBuyAndDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          right: 25.0,
          left: 25.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              globals.sizedBoxHeight50px,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductSelection(),
                        ),
                      );
                    },
                    icon: SvgPicture.asset(
                      'assetsDelivery/assetsSvg/left2.svg',
                    ),
                  ),
                  const TextWidgets(
                    text: "Покупка и доставка",
                    fontFamily: 'Lato',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(19, 59, 119, 1.0),
                    letterSpacing: 0.5,
                  ),
                  SvgPicture.asset(
                    'assetsBag/assetsSvg/video.svg',
                  ),
                ],
              ),
              const SizedBox(
                height: 35.0,
              ),
              TextFieldWidget(
                labelText: "Укажите ссылку на товар*",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assetsBag/assetsSvg/questionIcon.svg",
                  ),
                ),
              ),
              globals.sizedBoxHeight10px,
              const TextFieldWideWidget(
                labelText:
                    'Размер, цвет, кол-во, другие детали или Ваш вопрос*',
              ),
              const SizedBox(
                height: 25.0,
              ),
              RowWidget(
                mainAxisAlignment: MainAxisAlignment.start,
                text: TextButton(
                  onPressed: () {},
                  child: const TextLato14pxW700(
                    text: "Добавить еще один товар в просчет",
                  ),
                ),
                svgpicture: "assetsBag/assetsSvg/plusBlue.svg",
                color: const Color.fromRGBO(0, 102, 255, 1.0),
              ),
              RowWidget(
                mainAxisAlignment: MainAxisAlignment.start,
                text: TextButton(
                  onPressed: () {},
                  child: const TextLato14pxW700(
                    text: "Ориентировочная стоимость",
                  ),
                ),
                svgpicture: "assetsDelivery/assetsSvg/+-.svg",
                color: const Color.fromRGBO(0, 102, 255, 1.0),
              ),
              const SizedBox(
                height: 300,
              ),
              GreenButton(
                fillColor: const Color.fromRGBO(15, 196, 148, 1.0),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const MakingAPurchaseAndDeliveryPage(),
                    ),
                  );
                },
                change: false,
                textWidget: const Text(
                  'Далее',
                  style: TextStyle(
                    color: Color.fromRGBO(5, 98, 73, 1.0),
                    fontFamily: 'Lato,',
                    fontWeight: FontWeight.w800,
                    fontSize: 14.0,
                    letterSpacing: 1.0,
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
