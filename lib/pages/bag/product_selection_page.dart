import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag/buy_and_delivery_page.dart';
import 'package:from_usa/pages/bag/making_delivery_only_page/making_delivery_only_page.dart';
import 'package:from_usa/pages/home/home_main_page.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class ProductSelection extends StatefulWidget {
  const ProductSelection({super.key});

  @override
  State<ProductSelection> createState() => _ProductSelectionState();
}

class _ProductSelectionState extends State<ProductSelection> {
  bool change = true;
  TextStyle textStyle = const TextStyle(
    fontFamily: 'Lato',
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
    color: Color.fromRGBO(19, 59, 119, 1.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            // barrierColor: const Color.fromARGB(255, 235, 233, 233),
            context: context,
            builder: (context) => Container(
              color: Colors.white,
              height: 275,
              child: Column(
                children: [
                  globals.sizedBoxHeight10px,
                  OrderWidget(
                    svgColor: const Color.fromRGBO(15, 196, 148, 1.0),
                    svgPicture: "assetsDelivery/assetsSvg/buy111.svg",
                    textButtonOnPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FunctionBuyAndDelivery(),
                        ),
                      );
                    },
                    textTextButton: 'Заказать покупку и доставку',
                    textStyle: textStyle,
                  ),
                  globals.sizedBoxHeight10px,
                  OrderWidget(
                    svgColor: const Color.fromRGBO(0, 102, 255, 1.0),
                    svgPicture: "assetsBag/assetsSvg/box.svg",
                    textButtonOnPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MakingDeliveryOnlyPage(),
                        ),
                      );
                    },
                    textTextButton: 'Заказать только  доставку',
                    textStyle: textStyle,
                  ),
                  globals.sizedBoxHeight10px,
                  OrderWidget(
                    svgColor: const Color.fromRGBO(19, 59, 119, 1.0),
                    svgPicture: "assetsBag/assetsSvg/camera.svg",
                    textButtonOnPressed: () {},
                    textTextButton: 'Заказать по фотогафии',
                    textStyle: textStyle,
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  BottomAppBarWidget(
                    imageFirst: 'assetsBag/assetsSvg/notActivehome.svg',
                    imageTwo: "assetsBag/assetsSvg/activeBag.svg",
                    svgwidget: "assetsBag/assetsSvg/blueCircle3.svg",
                    imageThree: "assetsBag/assetsSvg/invoice.svg",
                    imageFor: "assetsDelivery/assetsSvg/profile.svg",
                    onPressedFirst: () {},
                    onPressedTwo: () {},
                    onPressedThree: () {},
                    onPressedFor: () {},
                  ),
                ],
              ),
            ),
          );
        },
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
          imageTwo: "assetsBag/assetsSvg/activeBag.svg",
          imageThree: "assetsBag/assetsSvg/invoice.svg",
          imageFor: "assetsDelivery/assetsSvg/profile.svg",
          onPressedFirst: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DeliveryMainScreen(),
              ),
            );
          },
          onPressedTwo: () {},
          onPressedThree: () {},
          onPressedFor: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 25.0, left: 25.0),
        child: Column(
          children: [
            globals.sizedBoxHeight50px,
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
                  "assetsBag/assetsSvg/infoSquare.svg",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assetsBag/assetsImage/bayAndDelivery.png',
                ),
                Image.asset(
                  'assetsBag/assetsImage/onlyDelivery.png',
                ),
              ],
            ),
            selectedProduct(
              'assetsDelivery/assetsImage/jacket.png',
              'Columbia cxl 123',
              context,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const TextWidgets(
                        text: "Цена в Украине",
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(19, 59, 119, 1.0),
                        letterSpacing: 0.75,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assetsBag/assetsImage/ukraine.png",
                          ),
                          globals.sizedBoxWidth10px,
                          const TextWidgets(
                            text: "75\$",
                            fontFamily: "Poppins",
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 102, 255, 1),
                            letterSpacing: 0.5,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const TextWidgets(
                        text: "Цена в США",
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(19, 59, 119, 1.0),
                        letterSpacing: 0.75,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assetsBag/assetsImage/america.png",
                          ),
                          globals.sizedBoxWidth10px,
                          const TextWidgets(
                            text: "35\$",
                            fontFamily: "Poppins",
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 102, 255, 1),
                            letterSpacing: 0.5,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget selectedProduct(
    String imgString, String nameProduct, BuildContext context) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        height: 230,
        width: 163,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2.0,
            color: const Color.fromRGBO(248, 250, 253, 1),
          ),
        ),
        child: Image.asset(
          imgString,
          scale: 0.5,
        ),
      ),
      Positioned(
        left: 20.0,
        bottom: 25.0,
        child: TextWidgets(
          text: nameProduct,
          fontFamily: "Lato",
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
          color: const Color.fromRGBO(0, 0, 1, 1.0),
          letterSpacing: 1.0,
        ),
      ),
    ],
  );
}

class OrderWidget extends StatelessWidget {
  final Color svgColor;
  final String svgPicture;
  final Function() textButtonOnPressed;
  final String textTextButton;
  final TextStyle textStyle;
  const OrderWidget(
      {required this.svgColor,
      required this.svgPicture,
      required this.textButtonOnPressed,
      required this.textTextButton,
      required this.textStyle,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
        right: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(
          16.0,
        ),
        color: const Color.fromRGBO(248, 250, 253, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 56.0,
            width: 56.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(
                16.0,
              ),
              color: svgColor,
            ),
            child: FittedBox(
              fit: BoxFit.none,
              child: SvgPicture.asset(
                svgPicture,
              ),
            ),
          ),
          globals.sizedBoxWidth20px,
          TextButton(
            onPressed: textButtonOnPressed,
            child: Text(
              textTextButton,
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
