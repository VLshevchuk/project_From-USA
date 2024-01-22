import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarGeneralWidget extends StatelessWidget {
  final Function()? backPage;
  final String imageLeft;
  final Widget textWidget;
  final String imageRight;

  const AppBarGeneralWidget(
      {required this.backPage,
      required this.imageLeft,
      required this.textWidget,
      required this.imageRight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: backPage,
          icon: SvgPicture.asset(imageLeft),
        ),
        textWidget,
        SvgPicture.asset(
          imageRight,
        ),
      ],
    );
  }
}
