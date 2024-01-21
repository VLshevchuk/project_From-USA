import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/helpWidgets/green_button.dart';
import 'package:from_usa/helpWidgets/text_widget.dart';
import 'package:from_usa/pages/bagTab/product_selection.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class FunctionBuyAndDelivery extends StatelessWidget {
  const FunctionBuyAndDelivery({super.key});

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
                    icon:
                        SvgPicture.asset('assetsDelivery/assetsSvg/left2.svg'),
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
              Container(
                width: double.infinity,
                height: 56.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(
                    10.0,
                  ),
                  color: const Color.fromRGBO(248, 250, 253, 1),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Укажите сылку на товар*',
                    labelStyle: const TextStyle(
                      color: Color.fromRGBO(167, 176, 192, 1),
                      fontFamily: 'Lato',
                      fontSize: 14.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        "assetsBag/assetsSvg/questionIcon.svg",
                        fit: BoxFit.none,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 24.0,
                    ),
                  ),
                ),
              ),
              globals.sizedBoxHeight10px,
              Container(
                width: double.infinity,
                height: 128.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(
                    10.0,
                  ),
                  color: const Color.fromRGBO(248, 250, 253, 1),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText:
                        'Размер, цвет, кол-во, другие детали или Ваш вопрос*',
                    labelStyle: const TextStyle(
                      color: Color.fromRGBO(167, 176, 192, 1),
                      fontFamily: 'Lato',
                      fontSize: 14.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(
                        top: 105,
                      ),
                      child: SvgPicture.asset(
                        "assetsBag/assetsSvg/twoStripes.svg",
                        fit: BoxFit.none,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 24.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assetsBag/assetsSvg/plusBlue.svg",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const TextLato14pxW700(
                      text: 'Добавить еще один товар в просчет',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assetsDelivery/assetsSvg/+-.svg",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const TextLato14pxW700(
                      text: 'Ориентировочная стоимость',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 300,
              ),
              GreenButton(
                fillColor: const Color.fromRGBO(15, 196, 148, 1.0),
                onPressed: () {},
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
