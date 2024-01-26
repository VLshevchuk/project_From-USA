import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final Widget? suffixIcon;
  const TextFieldWidget({
    required this.labelText,
    this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width:325.0,
      height: 56.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(
          16.0,
        ),
        color:const Color.fromRGBO(248, 250, 253, 1),
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Color.fromRGBO(167, 176, 192, 1),
            fontFamily: 'Lato',
            fontSize: 14.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: suffixIcon,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 24.0,
          ),
        ),
        style:globals.textStyleFW700WFFLatoFS16LS05
      ),
    );
  }
}

class TextFieldWideWidget extends StatelessWidget {
  final String labelText;

  const TextFieldWideWidget({
    required this.labelText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width:325.0,
      height: 128.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(
          10.0,
        ),
        color: const Color.fromRGBO(248, 250, 253, 1),
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Color.fromRGBO(167, 176, 192, 1),
            fontFamily: 'Lato',
            fontSize: 14.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(
              top: 105,
            ),
            child: SvgPicture.asset(
              "assetsBag/assetsSvg/twoStripes.svg",
              fit: BoxFit.none,
            ),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 24.0,
          ),
        ),
      ),
    );
  }
}
