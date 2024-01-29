import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/row_widget.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag/store_catalog_main_screen.dart';
import 'package:from_usa/pages/box/my_parcels_main.dart';
import 'package:from_usa/pages/home/function_delivery_only/function_delivery_only.dart';
import 'package:from_usa/pages/home/function_delivery_rates/function_delivery_rates.dart';
import 'package:from_usa/pages/home/function_purchase_and_delivery/function_purchase_and_delivery.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main.dart';

class DeliveryMainScreen extends StatelessWidget {
  const DeliveryMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(15, 196, 148, 1.0),
        child: SvgPicture.asset(
          "assetsDelivery/assetsSvg/+.svg",
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.none,
        elevation: 0,
        child: BottomAppBarWidget(
          imageFirst: 'assetsDelivery/assetsSvg/home.svg',
          imageTwo: "assetsDelivery/assetsSvg/bag.svg",
          imageThree: "assetsDelivery/assetsSvg/group.svg",
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
          onPressedThree: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyParcelsMain(),
              ),
            );
          },
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
      floatingActionButtonLocation: CustomFloatingActionButtonLocation(
        bottom: 68,
        left: 177.5,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              globals.sizedBoxHeight60px,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    "assetsDelivery/assetsSvg/notification.svg",
                  ),
                  const TextWidgets(
                    text: 'FromUSA',
                    fontFamily: "Lato",
                    fontSize: 32.0,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(20, 63, 126, 1),
                    letterSpacing: 0.5,
                  ),
                  SvgPicture.asset(
                    "assetsDelivery/assetsSvg/vectorD.svg",
                  ),
                ],
              ),
              globals.sizedBoxHeight20px,
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidgets(
                    text: 'Ваш баланс:',
                    fontFamily: "Lato",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(19, 59, 119, 1),
                    letterSpacing: 0.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.0,
                    ),
                    child: TextWidgets(
                      text: '358.93 \$:',
                      fontFamily: "Opens",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 102, 255, 1),
                      letterSpacing: 0.5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.0,
                    ),
                    child: TextWidgets(
                      text: '\\11157 грн',
                      fontFamily: "Opens",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(19, 59, 119, 1),
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
              globals.sizedBoxHeight30px,
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: const Color.fromRGBO(248, 250, 253, 1),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const FunctionPurchaseAndDelivery(),
                              ),
                            );
                          },
                          child: const TextLato40pxW800(
                            text: 'Покупка и доставка',
                            customSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 20,
                          child: SvgPicture.asset(
                            "assetsDelivery/assetsSvg/greenCircle.svg",
                          ),
                        ),
                        Image.asset(
                          "assetsDelivery/assetsImage/car.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              globals.sizedBoxHeight20px,
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: const Color.fromRGBO(248, 250, 253, 1),
                ),
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        globals.sizedBoxWidth10px,
                        Positioned(
                          top: -40,
                          left: 285,
                          child: SvgPicture.asset(
                            "assetsDelivery/assetsSvg/greenCircle.svg",
                            colorFilter: const ColorFilter.mode(
                              Color.fromRGBO(19, 59, 119, 1),
                              BlendMode.srcATop,
                            ),
                          ),
                        ),
                        Positioned(
                          top: -40,
                          left: 192,
                          child: Image.asset(
                            "assetsDelivery/assetsImage/air.png",
                          ),
                        ),
                      ],
                    ),
                    globals.sizedBoxWidth10px,
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FunctionDeliveryOnly(),
                          ),
                        );
                      },
                      child: const TextLato40pxW800(
                        text: 'Только доставка',
                        customSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              globals.sizedBoxHeight40px,
              RowWidget(
                text: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FunctionDeliveryRates(),
                      ),
                    );
                  },
                  child:
                      const TextLato14pxW700(text: "Тарифы на услуги доставки"),
                ),
                svgpicture: "assetsDelivery/assetsSvg/+-.svg",
                color: const Color.fromRGBO(0, 102, 255, 1),
              ),
              globals.sizedBoxHeight40px,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: Image.asset(
                      "assetsDelivery/assetsImage/amazon.png",
                    ),
                  ),
                  Image.asset(
                    "assetsDelivery/assetsImage/ebay.png",
                  ),
                  Image.asset(
                    "assetsDelivery/assetsImage/macys.png",
                  ),
                  Image.asset(
                    "assetsDelivery/assetsImage/walk.png",
                  ),
                ],
              ),
              globals.sizedBoxHeight50px,
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    product(
                      'assetsDelivery/assetsImage/jacket.png',
                      '50\$',
                      '75\$',
                      'Columbia cxl 123',
                      'www.columbia.сom',
                    ),
                    globals.sizedBoxWidth10px,
                    product(
                      'assetsDelivery/assetsImage/watch.png',
                      '1k\$',
                      '1.2k\$',
                      'CASIVO 12345 L',
                      'www.casivo.сom',
                    ),
                    globals.sizedBoxWidth10px,
                    product(
                      'assetsDelivery/assetsImage/jacket.png',
                      '770\$',
                      '885\$',
                      'Columbia cxl 123',
                      'www.columbia.сom',
                    ),
                    globals.sizedBoxWidth10px,
                    product(
                      'assetsDelivery/assetsImage/watch.png',
                      '2k\$',
                      '3k\$',
                      'CASIVO 12345 L',
                      'www.casivo.сom',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget product(
  String imgString,
  String activePrice,
  String notActivePrice,
  String nameProduct,
  String website,
) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        height: 216,
        width: 163,
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
        child: Image.asset(imgString),
      ),
      Positioned(
        right: 5,
        top: 24,
        child: Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(0, 102, 255, 0.16),
          ),
          child: Center(
            child: TextWidgets(
              text: notActivePrice,
              fontFamily: "Poppins",
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: 0.75,
            ),
          ),
        ),
      ),
      Positioned(
        right: 5,
        top: -6,
        child: Container(
          width: 48.0,
          height: 48.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(19, 59, 119, 1.0),
          ),
          child: Center(
            child: TextWidgets(
              text: activePrice,
              fontFamily: "Lato",
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              letterSpacing: 1.0,
            ),
          ),
        ),
      ),
      Positioned(
        left: 20.0,
        bottom: 30.0,
        child: TextWidgets(
            text: nameProduct,
            fontFamily: "Lato",
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(0, 0, 1, 1.0),
            letterSpacing: 1.0),
      ),
      Positioned(
        left: 10.0,
        bottom: -5.0,
        child: TextButton(
          onPressed: () {},
          child: TextLato14pxW400(text: website),
        ),
      ),
    ],
  );
}
