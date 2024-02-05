import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class ContainerContent extends StatelessWidget {
  final String image;
  final String numberOrder;
  final String dataDeliver;

  final String svgDelivery;

  final String selectDelivery;
  final String svgMoney;
  final String price;
  final String svgWeight;

  final String statusOrder;
  final Widget statusButton;
  const ContainerContent({
    super.key,
    required this.image,
    required this.numberOrder,
    required this.dataDeliver,
    required this.svgDelivery,
    required this.selectDelivery,
    required this.svgMoney,
    required this.price,
    required this.svgWeight,
    required this.statusOrder,
    required this.statusButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 154,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        border: Border.all(
          width: 2.0,
          color: const Color.fromRGBO(248, 250, 253, 1),
        ),
        color: const Color.fromRGBO(248, 250, 253, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          top: 10.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(image),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "№",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          globals.sizedBoxWidth10px,
                          Text(
                            numberOrder,
                            style: const TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0,
                              color: Color.fromRGBO(15, 196, 148, 1),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Дата доставки",
                            style: globals.textStyleFW400WFFLatoFS14LS1,
                          ),
                          globals.sizedBoxWidth10px,
                          Text(
                            dataDeliver,
                            style: globals.textStyleFW700WFFLatoFS14LS05,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            globals.sizedBoxHeight20px,
            Row(
              children: [
                SvgPicture.asset(
                  svgDelivery,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Text(
                  selectDelivery,
                  style: globals.textStyleFW700WFFLatoFS14LS05,
                ),
                const SizedBox(
                  width: 24.0,
                ),
                SvgPicture.asset(
                  svgMoney,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Text(
                  price,
                  style: globals.textStyleFW700WFFLatoFS14LS05,
                ),
                globals.sizedBoxWidth20px,
                SvgPicture.asset(
                  svgWeight,
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Text(
                  "1000.00кг",
                  style: globals.textStyleFW700WFFLatoFS14LS05,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  statusOrder,
                  style: const TextStyle(
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.0,
                    color: Color.fromRGBO(0, 102, 255, 1),
                  ),
                ),
                const SizedBox(
                  width: 32.0,
                ),
                statusButton,
              ],
            ),
          ],
        ),
      ),
    );
  }
}