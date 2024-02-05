import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class PaymentTransactionsContainerWidget extends StatelessWidget {
  const PaymentTransactionsContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        border: Border.all(
          width: 2.0,
          color: const Color.fromRGBO(248, 250, 253, 1.0),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          top: 12.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  "assets_profile/assetsSvg/id7.svg",
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '23424',
                  style: globals.textStyleFW400WFFLatoFS14LS1,
                ),
                const SizedBox(
                  width: 21,
                ),
                SvgPicture.asset(
                  "assets_profile/assetsSvg/calendar7.svg",
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "13/12/2020",
                  style: globals.textStyleFW400WFFLatoFS14LS1,
                ),
                const SizedBox(
                  width: 13,
                ),
                SvgPicture.asset(
                  "assets_profile/assetsSvg/money-bag7.svg",
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '-\$2.7',
                  style: globals.textStyleFW400WFFLatoFS14LS1,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "Тип операции",
                  style: globals.textStyleFW400WFFLatoFS14LS1,
                ),
                globals.sizedBoxWidth10px,
                Text(
                  "Оплата заказа",
                  style: globals.textStyleFW700WFFLatoFS16LS05,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "Способ",
                  style: globals.textStyleFW400WFFLatoFS14LS1,
                ),
                globals.sizedBoxWidth10px,
                Text(
                  "Баланс",
                  style: globals.textStyleFW700WFFLatoFS16LS05,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
