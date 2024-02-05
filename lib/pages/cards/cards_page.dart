import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/pages/cards/widgets/container_box.dart';
import 'package:from_usa/pages/cards/widgets/container_text.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          top: 75.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ContainerBox(
                text: '200 грн за распаковку',
                widgetSvg: SvgPicture.asset(
                  'assets_profile/assetsSvg/star_blue.svg',
                ),
                text2:
                    "Запишите видеоролик или сделайте фото распаковки, выложите его на youtube и в нашей группе Facebook.",
                widget: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                    ),
                    child: Image.asset(
                      "assets_profile/assetsImg/200box.png",
                    ),
                  ),
                ),
              ),
              ContainerBox(
                text: 'Кешбэк',
                widgetSvg: SvgPicture.asset(
                  'assets_profile/assetsSvg/star_blue.svg',
                ),
                text2:
                    "Мы  запустили  первый в  Украине  кешбэк для  доставки товаров  из  США  и Европы. Покупать за рубежом стало еще выгоднее и приятнее!",
                widget: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    "assets_profile/assetsImg/wallet_rafiki2.png",
                  ),
                ),
              ),
              ContainerBox(
                text: 'Фулфилмент',
                widgetSvg: SvgPicture.asset(
                  'assets_profile/assetsSvg/star_blue.svg',
                ),
                text2:
                    "Вы концентрируетесь на самом важном —  привлечении клиентов и заказов, а мы берем на себя рутину, которую за 7 лет выучили до мелочей, доставив более 1 млн. товаров.",
                widget: Padding(
                  padding: const EdgeInsets.only(
                    top: 18.0,
                  ),
                  child: Image.asset(
                    "assets_profile/assetsImg/mask.png",
                  ),
                ),
              ),
              ContainerBox(
                widgetSvg: SvgPicture.asset(
                  'assets_profile/assetsSvg/star_blue.svg',
                ),
                widget: Padding(
                  padding: const EdgeInsets.only(
                    top: 69.0,
                  ),
                  child: SvgPicture.asset(
                    'assets_profile/assetsSvg/group575.svg',
                  ),
                ),
              ),
              ContainerBox(
                widgetSvg: SvgPicture.asset(
                  'assets_profile/assetsSvg/star_blue.svg',
                ),
                widget: Container(
                  height: 45.0,
                  width: 400,
                  margin: const EdgeInsets.only(
                    top: 120.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: const Color.fromRGBO(247, 247, 247, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(
                      27.0,
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Text(
                          'https://my.fromusa.ua/jjkl123jkl123',
                        ),
                      ),
                      Container(
                        height: 37.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            27.0,
                          ),
                          color: const Color.fromRGBO(15, 196, 148, 1.0),
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              'Скопировать',
                              style: TextStyle(
                                fontFamily: 'Opens',
                                fontWeight: FontWeight.w700,
                                fontSize: 10.0,
                                letterSpacing: 0.5,
                                color: Color.fromRGBO(0, 50, 37, 1.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              globals.sizedBoxHeight20px,
              ContainerText(
                heightBox: 240.0,
                introductoryText: "Реферальная программа",
                secondaryText:
                    "Для получения бонуса отправьте индивидуальную ссылку Вашему другу. После того, как его заказ  будет доставлен, на Ваш баланси баланс Вашего  друга будут начислены по 50 грн. ",
                widgetField: Container(
                  margin: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: Colors.white,
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          'ds',
                          style: TextStyle(
                            fontFamily: 'Opens',
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            color: Color.fromRGBO(0, 102, 255, 1.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              globals.sizedBoxHeight20px,
              const ContainerText(
                introductoryText: "Расширенная партнерская программа",
                secondaryText:
                    "Если Вы блоггер или у Вас  есть популярный сайт или другие источники трафика, Вы можете  получать доход, рекламируя наш сервис.",
              ),
              globals.sizedBoxHeight20px,
              const ContainerText(
                heightBox: 140.0,
                introductoryText: "200 грн за распаковку",
                secondaryText:
                    "Запишите видеоролик или сделайте фото распаковки, выложите его на youtube и в нашей группе Facebook.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
