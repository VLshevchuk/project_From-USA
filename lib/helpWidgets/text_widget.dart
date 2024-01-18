import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final double letterSpacing;
  final Color color;
  const TextWidgets(
      {super.key,
      required this.text,
      required this.fontFamily,
      required this.fontSize,
      required this.fontWeight,
      required this.color,
      required this.letterSpacing});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          letterSpacing: letterSpacing),
    );
  }
}

class TextLato14pxW700 extends StatelessWidget {
  final String text;
  const TextLato14pxW700({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(19, 59, 119, 1),
          letterSpacing: 1.0),
    );
  }
}

class TextLato14pxW400 extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  const TextLato14pxW400({
    Key? key,
    required this.text,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(19, 59, 119, 1),
          letterSpacing: 1.0),
    );
  }
}

class TextLato40pxW800 extends StatelessWidget {
  final String text;
  final double? customSize;
  final double? letterSpacing;
  const TextLato40pxW800(
      {Key? key, required this.text, this.customSize, this.letterSpacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "Lato",
          fontSize: customSize ?? 40.0,
          fontWeight: FontWeight.w800,
          color: const Color.fromRGBO(19, 59, 119, 1),
          letterSpacing: letterSpacing ?? 0.5),
    );
  }
}

class TextGreenButton extends StatelessWidget {
  final String text;
  const TextGreenButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 14.0,
          fontWeight: FontWeight.w800,
          color: Color.fromRGBO(5, 98, 73, 1),
          letterSpacing: 1.0),
    );
  }
}
