import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
class RowTextWidget extends StatelessWidget {
  final String textWeight400;
  final String textWeight700;
  const RowTextWidget(
      {required this.textWeight400, required this.textWeight700, super.key,});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyleWeight400 = const TextStyle(
      fontFamily: 'Lato',
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      letterSpacing: 1.0,
      color: Color.fromRGBO(19, 59, 119, 1),
    );
    TextStyle textStyleWeight700 = const TextStyle(
      fontFamily: 'Lato',
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
      letterSpacing: 0.5,
      color: Color.fromRGBO(19, 59, 119, 1),
    );
    return Column(
      children: [
        Row(
          children: [
            Text(
              textWeight400,
              style: textStyleWeight400,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              textWeight700,
              style: textStyleWeight700,
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assetsBag/assetsSvg/copyIcon.svg",
              ),
            ),
          ],
        ),
      ],
    );
  }
}