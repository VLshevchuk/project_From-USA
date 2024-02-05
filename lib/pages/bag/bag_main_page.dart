import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:from_usa/help_widgets/bottom_app_bar/customfloating_action_button_location.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag/widgets/product_widget.dart';
import 'package:from_usa/pages/bag/widgets/shopping_malls_widget.dart';
import 'package:from_usa/pages/box/box_main_page.dart';
import 'package:from_usa/pages/home/home_main_page.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main_page.dart';

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
          imageThree: "assetsDelivery/assetsSvg/group.svg",
          imageFor: "assetsDelivery/assetsSvg/profile.svg",
          onPressedFirst: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DeliveryMainScreen(),
              ),
            );
          },
          onPressedThree: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BoxMain(),
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
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
        ),
        child: Column(
          children: [
            globals.sizedBoxHeight60px,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: TextLato40pxW800(
                    text: "Наш выбор",
                    customSize: 30.0,
                    letterSpacing: 0.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20.0,
                  ),
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
                    child: Text(
                      'Обувь',
                      style: textStyle,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Одежда',
                      style: textStyle,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Электроника',
                      style: textStyle,
                    ),
                  ),
                ],
              ),
            ),
            globals.sizedBoxHeight20px,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const ProductWidget(
                    imgString: 'assetsDelivery/assetsImage/jacket.png',
                    activePrice: '50\$',
                    notActivePrice: '75\$',
                    nameProduct: 'Columbia cxl 123',
                    website: 'www.columbia.сom',
                  ),
                  globals.sizedBoxWidth10px,
                  const ProductWidget(
                    imgString: 'assetsDelivery/assetsImage/watch.png',
                    activePrice: '1k\$',
                    notActivePrice: '1.2k\$',
                    nameProduct: 'CASIVO 12345 L',
                    website: 'www.casivo.сom',
                  ),
                  globals.sizedBoxWidth10px,
                  const ProductWidget(
                    imgString: 'assetsDelivery/assetsImage/jacket.png',
                    activePrice: '770\$',
                    notActivePrice: '885\$',
                    nameProduct: 'Columbia cxl 123',
                    website: 'www.columbia.сom',
                  ),
                  globals.sizedBoxWidth10px,
                  const ProductWidget(
                    imgString: 'assetsDelivery/assetsImage/watch.png',
                    activePrice: '2k\$',
                    notActivePrice: '3k\$',
                    nameProduct: 'CASIVO 12345 L',
                    website: 'www.casivo.сom',
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
                  const ShoppingMallsWidget(
                    imageAsset: "assetsDelivery/assetsImage/ebay.png",
                  ),
                  globals.sizedBoxWidth10px,
                  const ShoppingMallsWidget(
                    imageAsset: "assetsDelivery/assetsImage/amazon.png",
                  ),
                  globals.sizedBoxWidth10px,
                  const ShoppingMallsWidget(
                    imageAsset: "assetsDelivery/assetsImage/macys.png",
                  ),
                  globals.sizedBoxWidth10px,
                  const ShoppingMallsWidget(
                    imageAsset: "assetsDelivery/assetsImage/walk.png",
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
