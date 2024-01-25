import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  final String firstChoiceValue;
  final String twoChoiceValue;
  final String threeChoiceValue;

  const DropdownButtonWidget({super.key, 
    required this.firstChoiceValue,
    required this.twoChoiceValue,
    required this.threeChoiceValue,
  });

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

TextStyle textStyle = const TextStyle(
  fontFamily: 'Lato',
  fontWeight: FontWeight.w700,
  fontSize: 16.0,
  letterSpacing: 0.5,
  color: Color.fromRGBO(19, 59, 119, 1.0),
);

TextStyle notActive = const TextStyle(
  fontFamily: 'Lato',
  fontWeight: FontWeight.w400,
  fontSize: 14.0,
  letterSpacing: 1.0,
  color: Color.fromRGBO(167, 176, 192, 1.0),
);

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  String? _dropdownValue;

  void dropdownValue(String? value) {
    if (value is String) {
      setState(() {
        _dropdownValue = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // width: 325.0,
          height: 56.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(15.0),
            color: const Color.fromRGBO(248, 250, 253, 1),
          ),
          child: DropdownButton(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            isExpanded: true,
            items: [
              DropdownMenuItem(
                value: '1',
                child: Text(
                  widget.firstChoiceValue,
                  style: textStyle,
                ),
              ),
              DropdownMenuItem(
                value: '2',
                child: Text(
                  widget.twoChoiceValue,
                  style: textStyle,
                ),
              ),
              DropdownMenuItem(
                value: '3',
                child: Text(
                  widget.threeChoiceValue,
                  style: textStyle,
                ),
              ),
            ],
            hint: Text(
              'Выберите способ доставки',
              style: notActive,
            ),
            onChanged: dropdownValue,
            value: _dropdownValue,
            underline: Container(
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
