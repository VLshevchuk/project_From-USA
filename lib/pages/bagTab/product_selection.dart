import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/helpWidgets/text_widget.dart';
import 'package:from_usa/pages/bagTab/function_buy_and_delivery.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class ProductSelection extends StatefulWidget {
  const ProductSelection({super.key});
  // ProductSelection({Key? key}) : super(key: key);

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
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            change = !change;
          });
          if (change == false) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Stack(
                  children: [
                    Positioned(
                      bottom: 70,
                      child: AlertDialog(
                        title: const Text('Заказ'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                change = true;
                              });
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK'),
                          ),
                        ],
                        content: Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 56.0,
                                    width: 56.0,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(
                                              10.0),
                                      color: const Color.fromRGBO(
                                          15, 196, 148, 1.0),
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.none,
                                      child: SvgPicture.asset(
                                        "assetsDelivery/assetsSvg/buy111.svg",
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const FunctionBuyAndDelivery(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Заказать покупку и доставку',
                                      style: textStyle,
                                    ),
                                  ),
                                ],
                              ),
                              globals.sizedBoxHeight10px,
                              Row(
                                children: [
                                  Container(
                                    height: 56.0,
                                    width: 56.0,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(
                                              10.0),
                                      color: const Color.fromRGBO(
                                          0, 102, 255, 1.0),
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.none,
                                      child: SvgPicture.asset(
                                        "assetsBag/assetsSvg/box.svg",
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Заказать только  доставку',
                                      style: textStyle,
                                    ),
                                  ),
                                ],
                              ),
                              globals.sizedBoxHeight10px,
                              Row(
                                children: [
                                  Container(
                                    height: 56.0,
                                    width: 56.0,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(
                                              10.0),
                                      color: const Color.fromRGBO(
                                          19, 59, 119, 1.0),
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.none,
                                      child: SvgPicture.asset(
                                        "assetsBag/assetsSvg/camera.svg",
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Заказать по фотогафии',
                                      style: textStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          }
        },
        backgroundColor: change
            ? const Color.fromRGBO(15, 196, 148, 1.0)
            : const Color.fromRGBO(19, 59, 119, 1),
        child: change
            ? SvgPicture.asset("assetsDelivery/assetsSvg/+.svg")
            : SvgPicture.asset("assetsBag/assetsSvg/blue+.svg"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: const Color.fromARGB(255, 232, 235, 241),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assetsBag/assetsSvg/notActivehome.svg"),
              ),
              IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const StoreCatalog(),
                  //   ),
                  // );
                },
                icon: SvgPicture.asset("assetsBag/assetsSvg/activeBag.svg"),
              ),
              globals.sizedBoxWidth40px,
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assetsBag/assetsSvg/invoice.svg"),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assetsDelivery/assetsSvg/profile.svg"),
              ),
            ],
          ),
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
                SvgPicture.asset("assetsDelivery/assetsSvg/notification.svg"),
                const TextWidgets(
                  text: 'FromUSA',
                  fontFamily: "Lato",
                  fontSize: 32.0,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(20, 63, 126, 1),
                  letterSpacing: 0.5,
                ),
                SvgPicture.asset("assetsBag/assetsSvg/infoSquare.svg"),
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
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
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
          // color: const Color.fromARGB(255, 241, 244, 250),
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
            letterSpacing: 1.0),
      ),
    ],
  );
}
