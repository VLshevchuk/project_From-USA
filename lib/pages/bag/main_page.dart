import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag/product_selection_page.dart';
import 'package:from_usa/pages/home/main_page.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main.dart';

class StoreCatalog extends StatelessWidget {
  const StoreCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      fontFamily: 'Lato',
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
      color: Color.fromRGBO(19, 59, 119, 1.0),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(15, 196, 148, 1.0),
        child: SvgPicture.asset("assetsDelivery/assetsSvg/+.svg"),
      ),
      floatingActionButtonLocation:
          CustomFloatingActionButtonLocation(bottom: 68, left: 177.5),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          children: [
            globals.sizedBoxHeight60px,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextLato40pxW800(
                    text: "Наш выбор",
                    customSize: 30.0,
                    letterSpacing: 0.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: SvgPicture.asset(
                    'assetsDelivery/assetsSvg/vectorD.svg',
                  ),
                ),
              ],
            ),
            globals.sizedBoxHeight10px,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Топ товары',
                      style: textStyle,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Обувь', style: textStyle),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Одежда', style: textStyle),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Электроника', style: textStyle),
                  ),
                ],
              ),
            ),
            globals.sizedBoxHeight20px,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  product(
                    'assetsDelivery/assetsImage/jacket.png',
                    '50\$',
                    '75\$',
                    'Columbia cxl 123',
                    'www.columbia.сom',
                    context,
                  ),
                  globals.sizedBoxWidth10px,
                  product(
                    'assetsDelivery/assetsImage/watch.png',
                    '1k\$',
                    '1.2k\$',
                    'CASIVO 12345 L',
                    'www.casivo.сom',
                    context,
                  ),
                  globals.sizedBoxWidth10px,
                  product(
                    'assetsDelivery/assetsImage/jacket.png',
                    '770\$',
                    '885\$',
                    'Columbia cxl 123',
                    'www.columbia.сom',
                    context,
                  ),
                  globals.sizedBoxWidth10px,
                  product(
                    'assetsDelivery/assetsImage/watch.png',
                    '2k\$',
                    '3k\$',
                    'CASIVO 12345 L',
                    'www.casivo.сom',
                    context,
                  ),
                ],
              ),
            ),
            globals.sizedBoxHeight30px,
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Шоппинг - моллы",
                style: textStyle,
              ),
            ),
            globals.sizedBoxHeight20px,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  shoppingMalls(
                    "assetsDelivery/assetsImage/ebay.png",
                  ),
                  globals.sizedBoxWidth10px,
                  shoppingMalls(
                    "assetsDelivery/assetsImage/amazon.png",
                  ),
                  globals.sizedBoxWidth10px,
                  shoppingMalls(
                    "assetsDelivery/assetsImage/macys.png",
                  ),
                  globals.sizedBoxWidth10px,
                  shoppingMalls(
                    "assetsDelivery/assetsImage/walk.png",
                  ),
                ],
              ),
            ),
            globals.sizedBoxHeight20px,
            Row(
              children: [
                const TextWidgets(
                  text: "100 тыс. ",
                  fontFamily: 'Lato',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 102, 255, 1.0),
                  letterSpacing: 0.5,
                ),
                const Expanded(
                  child: TextLato14pxW400(
                    text: "успешных заказов",
                  ),
                ),
                SvgPicture.asset(
                  "assetsBag/assetsSvg/dollars.svg",
                ),
              ],
            ),
            globals.sizedBoxHeight20px,
            const Column(
              children: [
                TextLato14pxW400(
                    text:
                        '''Онлайн площадка для проведения аукционов и торговый сайт, на котором частные и юридические лица осуществляют продажу и покупку различных товаров и услуг.
'''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget product(String imgString, String activePrice, String notActivePrice,
    String nameProduct, String website, BuildContext context) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        height: 230.0,
        width: 163.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 2.0,
            color: const Color.fromRGBO(248, 250, 253, 1.0),
          ),
          color: const Color.fromRGBO(248, 250, 253, 1.0),
        ),
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductSelection(),
              ),
            );
          },
          icon: Image.asset(imgString),
        ),
      ),
      Positioned(
        right: 5.0,
        top: 30.0,
        child: Container(
          width: 48.0,
          height: 48.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(0, 102, 255, 0.16),
          ),
          child: Center(
            child: TextWidgets(
              text: notActivePrice,
              fontFamily: "Poppins",
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: 0.75,
            ),
          ),
        ),
      ),
      Positioned(
        right: 5.0,
        child: Container(
          width: 48.0,
          height: 48.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(15, 196, 148, 1.0),
          ),
          child: Center(
            child: TextWidgets(
              text: activePrice,
              fontFamily: "Lato",
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(5, 98, 73, 1.0),
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
          child: TextLato14pxW400(
            text: website,
          ),
        ),
      ),
    ],
  );
}

Widget shoppingMalls(String imageAsset) {
  return Container(
    width: 100.0,
    height: 100.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadiusDirectional.circular(10.0),
      color: const Color.fromRGBO(248, 250, 253, 1.0),
    ),
    child: IconButton(
      onPressed: () {},
      icon: Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          imageAsset,
        ),
      ),
    ),
  );
}
