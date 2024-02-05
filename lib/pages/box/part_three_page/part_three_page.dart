import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/green_button.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag/bag_main_page.dart';
import 'package:from_usa/pages/box/part_three_page/widgets/row_text.dart';
import 'package:from_usa/pages/home/home_main_page.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main_page.dart';

class PartThreePage extends StatefulWidget {
  const PartThreePage({super.key});

  @override
  State<PartThreePage> createState() => _PartThreePageState();
}

class _PartThreePageState extends State<PartThreePage> {
  bool change = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(15, 196, 148, 1.0),
        child: SvgPicture.asset(
          "assetsDelivery/assetsSvg/+.svg",
        ),
      ),
      floatingActionButtonLocation: CustomFloatingActionButtonLocation(
        bottom: 68,
        left: 177.5,
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.none,
        elevation: 0,
        child: BottomAppBarWidget(
          imageFirst: 'assetsBag/assetsSvg/notActivehome.svg',
          imageTwo: "assetsDelivery/assetsSvg/bag.svg",
          imageThree: "assets_profile/assetsSvg/boxActive.svg",
          imageFor: "assetsDelivery/assetsSvg/profile.svg",
          onPressedFirst: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DeliveryMainScreen(),
              ),
            );
          },
          onPressedTwo: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StoreCatalog(),
              ),
            );
          },
          onPressedThree: () {},
          onPressedFor: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileMain(),
              ),
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBarGlobal(
        backPage: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileMain(),
            ),
          );
        },
        imageLeft: 'assetsDelivery/assetsSvg/left2.svg',
        textWidget: Text(
          'Заказ №735689',
          style: globals.textStyleFW800WFFLatoFS20LS05,
        ),
        imageRight: 'assets_profile/assetsSvg/stroke7.svg',
        svgButton: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Только доставка",
                      style: globals.textStyleFW400WFFLatoFS14LS1,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14.0,
              ),
              Container(
                height: 42.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color:const Color.fromRGBO(238, 241, 245, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Только доставка",
                        style: globals.textStyleFW400WFFLatoFS14LS1,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 21.0,
              ),
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
              const RowText(
                text1: "Стоимость товара",
                text2: "\$1.00",
              ),
              const RowText(
                text1: "Наша комиссия",
                text2: "\$3.90",
              ),
              const RowText(
                text1: "Страхование",
                text2: "\$1.90",
              ),
              const RowText(
                text1: "Оформление заказа",
                text2: "\$0.99",
              ),
              const RowText(
                text1: "Стоимость авиадоставки в Укр.",
                text2: "\$5.95",
              ),
              const RowText(
                text1: "Стоимость морской доставки в Укр.",
                text2: "\$3.95",
              ),
              const RowText(
                text1: "Ориентировочный вес заказа",
                text2: "1.00 кг",
              ),
              const RowText(
                text1: "Фактический вес заказа",
                text2: "10.00 кг",
              ),
              globals.sizedBoxHeight30px,
              Row(
                children: [
                  Text(
                    "К оплате:",
                    style: globals.textStyleFW700WFFLatoFS14LS05,
                  ),
                  globals.sizedBoxWidth10px,
                  const Text(
                    "\$1,358.04",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      letterSpacing: 0.5,
                      color: Color.fromRGBO(0, 102, 255, 1.0),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "По курсу ПриватБанка - ₴38,501",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 12.0,
                      letterSpacing: 1.0,
                      color: Color.fromRGBO(19, 59, 119, 1),
                    ),
                  ),
                ],
              ),
              globals.sizedBoxHeight30px,
              GreenButton(
                radius: 30.0,
                heightBox: 40.0,
                widthBox: 360.0,
                fillColor: const Color.fromRGBO(15, 196, 148, 1),
                onPressed: () {},
                change: true,
                textWidget: const Center(
                  child: Expanded(
                    child: Text(
                      'Оплатить',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.0,
                        color: Color.fromRGBO(5, 98, 73, 1),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets_profile/assetsImg/rectangle.png",
                  ),
                  Positioned(
                    left: 170,
                    top: 3.0,
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        "assets_profile/assetsSvg/down.svg",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50.0,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 37.0,
                            width: 148.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: Colors.white,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets_profile/assetsSvg/group698.svg",
                              ),
                            ),
                          ),
                          globals.sizedBoxWidth10px,
                          Container(
                            height: 37.0,
                            width: 148.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: Colors.white,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets_profile/assetsSvg/address7.svg",
                              ),
                            ),
                          ),
                          globals.sizedBoxWidth10px,

                          Container(
                            height: 37.0,
                            width: 148.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: Colors.white,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets_profile/assetsSvg/buy698.svg",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    var path = Path();
    // Создайте свою форму здесь
    path.moveTo(
      size.width,
      size.height * 0.3,
    );

    // path.quadraticBezierTo(size.width , size.height *0.2, size.width*0.3, size.height );
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width * 0.3, size.height * 0.3);

    path.lineTo(size.width * 0.6, size.height * 0.6);

    // path.lineTo(size.height *0.5, size.height*0.4);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
