import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/green_button.dart';
import 'package:from_usa/help_widgets/row_widget.dart';
import 'package:from_usa/help_widgets/text_field_widget.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag/making_delivery_only_page/widgets/add_invoice.dart';
import 'package:from_usa/pages/bag/making_delivery_only_page/widgets/app_bar_making_delivery_only.dart';
import 'package:from_usa/pages/bag/making_delivery_only_page/widgets/bottom_button_making_delivery_only.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class MakingDeliveryOnlyPage extends StatefulWidget {
  const MakingDeliveryOnlyPage({super.key});

  @override
  State<MakingDeliveryOnlyPage> createState() => _MakingDeliveryOnlyStatePage();
}

class _MakingDeliveryOnlyStatePage extends State<MakingDeliveryOnlyPage> {
  bool addInvoice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              globals.sizedBoxHeight50px,
              const AppBarMakingDeliveryOnlyWidget(),
              const SizedBox(
                height: 15.0,
              ),
              SvgPicture.asset(
                "assetsBag/assetsSvg/green_stripe.svg",
                colorFilter: const ColorFilter.mode(
                  Color.fromRGBO(19, 59, 119, 1),
                  BlendMode.srcATop,
                ),
              ),
              const SizedBox(
                height: 26.0,
              ),
              const RowWidget(
                text: TextWidgets(
                  text: "Адрес склада",
                  fontFamily: 'Lato',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(19, 59, 119, 1),
                  letterSpacing: 0.6,
                ),
                svgpicture: 'assetsBag/assetsSvg/cart_home.svg',
              ),
              globals.sizedBoxHeight20px,
              Column(
                children: [
                  Container(
                    height: 96.0,
                    width: 328.0,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: 2.0,
                          color: Color.fromRGBO(19, 59, 119, 0.13),
                          offset: Offset(0, 9),
                          blurRadius: 14.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 21,
                        ),
                        addInvoice == true
                            ? SvgPicture.asset(
                                "assetsBag/assetsSvg/checkGreen.svg",
                              )
                            : SvgPicture.asset(
                                "assetsBag/assetsSvg/list.svg",
                              ),
                        const SizedBox(
                          width: 21,
                        ),
                        SvgPicture.asset(
                          "assetsBag/assetsSvg/lineblue.svg",
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              addInvoice = !addInvoice;
                            });
                          },
                          child: const TextWidgets(
                            text: "Загрузите инвойс покупки",
                            fontFamily: 'Lato',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(19, 59, 119, 1.0),
                            letterSpacing: 1.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 11.0,
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: SvgPicture.asset(
                              "assetsBag/assetsSvg/questionIcon.svg",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              globals.sizedBoxHeight30px,
              TextFieldWidget(
                labelText: 'Введите трек- номер посылки',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assetsBag/assetsSvg/questionIcon.svg',
                  ),
                ),
              ),
              RowWidget(
                text: TextButton(
                  onPressed: () {},
                  child: const TextWidgets(
                    text: "нет трека-номера",
                    fontFamily: 'Lato',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(19, 59, 119, 1),
                    letterSpacing: 1.0,
                  ),
                ),
                svgpicture: "assetsPanel/assetsSvg/radioWhite.svg",
              ),
              globals.sizedBoxHeight20px,
              RowWidget(
                text: TextButton(
                  onPressed: () {},
                  child: const TextLato14pxW700(
                    text: "Добавить еще один трек номер",
                  ),
                ),
                svgpicture: "assetsBag/assetsSvg/plusBlue.svg",
                color: const Color.fromRGBO(0, 102, 255, 1),
              ),
              addInvoice == true
                  ? const AddInvoice()
                  : const SizedBox(
                      height: 250.0,
                    ),
              addInvoice == true
                  ? Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 11.0),
                      child: GreenButton(
                        fillColor: const Color.fromRGBO(0, 102, 255, 1.0),
                        onPressed: () {},
                        change: false,
                        textWidget: const Text(
                          'Далее',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            fontFamily: 'Lato,',
                            fontWeight: FontWeight.w800,
                            fontSize: 14.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    )
                  : const BottomButtonMakingDeliveryOnlyWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
