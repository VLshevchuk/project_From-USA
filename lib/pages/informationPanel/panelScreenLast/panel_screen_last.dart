import 'package:flutter/material.dart';
import 'package:from_usa/helpWidgets/text_widget.dart';
import 'package:from_usa/pages/deliveryRegistrationPanel/delivery_main_screen.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

import '../../../helpWidgets/green_button.dart';
import '../../../helpWidgets/row_widget.dart';

class PanelScreenLast extends StatelessWidget {
  const PanelScreenLast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: globals.width * 0.9115,
          child: Column(
            children: [
              globals.sizedBoxHeight115px,
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const Column(
                    children: [
                      SizedBox(
                        height: 125,
                        child: TextLato40pxW800(
                          text: '9000',
                          customSize: 125.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      SizedBox(
                        height: 45,
                        child: TextLato40pxW800(
                          text: 'ВЫСАЖЕННЫХ',
                          customSize: 37.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      TextLato40pxW800(
                        text: 'ДЕРЕВЬЕВ',
                        customSize: 56.0,
                        letterSpacing: 1.0,
                      ),
                    ],
                  ),
                  Positioned(
                    top: -40,
                    right: 15,
                    child: Image.asset("assetsPanel/assetsImage/tree.png"),
                  ),
                ],
              ),
              globals.sizedBoxHeight100px,
              globals.sizedBoxHeight70px,
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 238, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        globals.sizedBoxWidth40px,
                        globals.sizedBoxHeight40px,
                        const TextLato14pxW400(
                            text: 'Наша плантация деревьев ежегодно:'),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: RowWidget(
                        text: TextLato14pxW700(
                          text: 'Поглощено 130 тон углекислого газа',
                        ),
                        svgpicture: "assetsPanel/assetsSvg/carbondioxidef.svg",
                        color: Color.fromRGBO(0, 102, 255, 1),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: RowWidget(
                        text: TextLato14pxW700(
                          text: 'Произведено 36 тон кислорода',
                        ),
                        svgpicture: "assetsPanel/assetsSvg/carbondioxide2.svg",
                        color: Color.fromRGBO(0, 102, 255, 1),
                      ),
                    ),
                  ],
                ),
              ),
              globals.sizedBoxHeight30px,
              const TextLato14pxW400(
                  text:
                      '10 грн с каждого кг идут на высадку\n                            деревьев'),
              globals.sizedBoxHeight40px,
              GreenButton(
                textWidget: const TextGreenButton(
                  text: 'Начать',
                ),
                change: false,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DeliveryMainScreen(),
                    ),
                  );
                },
                fillColor: const Color.fromRGBO(15, 196, 148, 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
