import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/helpWidgets/text_widget.dart';
import 'package:from_usa/pages/bagTab/product_selection.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class FunctionBuyAndDelivery extends StatelessWidget {
  const FunctionBuyAndDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 25.0, left: 25.0),
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
                  icon: SvgPicture.asset('assetsDelivery/assetsSvg/left2.svg'),
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
            Container(
              width: double.infinity,
              height: 56.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10.0),
                color: const Color.fromRGBO(240, 244, 250, 1),
              ),
              child:const TextField(
                decoration: InputDecoration(
                  labelText: 'Укажите сылку на товар*',
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
