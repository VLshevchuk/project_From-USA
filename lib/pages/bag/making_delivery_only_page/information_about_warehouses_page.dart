import 'package:flutter/material.dart';
import 'package:from_usa/help_widgets/green_button.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag/making_delivery_only_page/add_estimated_cost_page.dart';
import 'package:from_usa/pages/bag/making_delivery_only_page/widgets/row_text_widget.dart';

class InformationAboutWarehousesPage extends StatelessWidget {
  const InformationAboutWarehousesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          top: 50.0,
        ),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              color: const Color.fromRGBO(248, 250, 253, 1.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 21.0,
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 24.0,
                      bottom: 20.0,
                    ),
                    child: Row(
                      children: [
                        TextWidgets(
                          text: 'Основной склад',
                          fontFamily: 'Lato',
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Color.fromRGBO(19, 59, 119, 1.0),
                          letterSpacing: 0.5,
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'ФИО',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              letterSpacing: 1.0,
                              color: Color.fromRGBO(19, 59, 119, 1.0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Ваше ФИО",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                              letterSpacing: 0.5,
                              color: Color.fromRGBO(19, 59, 119, 1.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const RowTextWidget(
                    textWeight400: 'Улица',
                    textWeight700: '645 W 1st Ave. ste DN01326...',
                  ),
                  const RowTextWidget(
                    textWeight400: 'Город',
                    textWeight700: 'Roselle',
                  ),
                  const RowTextWidget(
                    textWeight400: 'Штат',
                    textWeight700: 'New Jersey',
                  ),
                  const RowTextWidget(
                    textWeight400: 'Индекс',
                    textWeight700: '07203',
                  ),
                  const RowTextWidget(
                    textWeight400: 'Телефон',
                    textWeight700: '+1 908 241 21 90',
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 60.0,
                      bottom: 15.0,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Дополнительный склад",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 30.0,
                            fontWeight: FontWeight.w800,
                            color: Color.fromRGBO(19, 59, 119, 1.0),
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'ФИО',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              letterSpacing: 1.0,
                              color: Color.fromRGBO(19, 59, 119, 1.0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Ваше ФИО",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                              letterSpacing: 0.5,
                              color: Color.fromRGBO(19, 59, 119, 1.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const RowTextWidget(
                    textWeight400: '+1 908 241 21 90',
                    textWeight700: '171 Edgemoor Road DN01326...',
                  ),
                  const RowTextWidget(
                    textWeight400: 'Город',
                    textWeight700: 'Wilmington',
                  ),
                  const RowTextWidget(
                    textWeight400: 'Индекс',
                    textWeight700: '19809',
                  ),
                  const RowTextWidget(
                    textWeight400: 'Телефон',
                    textWeight700: '+1 908 241 21 90',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Column(
                    children: [
                      Text(
                          "* - технику компании Apple можно отправлять только на дополнительный склад"),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GreenButton(
                    fillColor: const Color.fromRGBO(0, 102, 255, 1.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddEstimatedCostPage(),
                        ),
                      );
                    },
                    change: false,
                    textWidget: const Text(
                      'Назад',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                        fontFamily: 'Lato,',
                        fontWeight: FontWeight.w800,
                        fontSize: 14.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
