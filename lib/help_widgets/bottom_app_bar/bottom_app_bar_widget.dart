import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class BottomAppBarWidget extends StatelessWidget {
  final String imageFirst;
  final String imageTwo;
  final String imageThree;
  final String imageFor;
  final Function()? onPressedFirst;
  final Function()? onPressedTwo;
  final Function()? onPressedThree;
  final Function()? onPressedFor;
  final String? svgwidget;
  const BottomAppBarWidget(
      {required this.imageFirst,
      required this.imageTwo,
      required this.imageThree,
      required this.imageFor,
      this.onPressedFirst,
      this.onPressedTwo,
      this.onPressedThree,
      this.onPressedFor,
      this.svgwidget,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(119, 19, 94, 0.2),
              offset: Offset(0, 30),
              blurRadius: 30.0,
              spreadRadius: -19,
            ),
          ],
          image: const DecorationImage(
            image: AssetImage("assetsBag/assetsImage/rectangle.png"),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 15,
              child: Row(
                children: [
                  globals.sizedBoxWidth30px,
                  IconButton(
                    onPressed: onPressedFirst,
                    icon: SvgPicture.asset(
                      imageFirst,
                    ),
                  ),
                  globals.sizedBoxWidth20px,
                  IconButton(
                    onPressed: onPressedTwo,
                    icon: SvgPicture.asset(
                      imageTwo,
                    ),
                  ),
                ],
              ),
            ),
            if (svgwidget != null)
              Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    width: 83,
                    height: 83,
                    child: SvgPicture.asset(
                      svgwidget!,
                      fit: BoxFit.cover,
                      clipBehavior: Clip.none,
                    ),
                  ),
                ),
              )
            else
              const SizedBox(),
            Expanded(
              flex: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: onPressedThree,
                    icon: SvgPicture.asset(
                      imageThree,
                    ),
                  ),
                  globals.sizedBoxWidth20px,
                  IconButton(
                    onPressed: onPressedFor,
                    icon: SvgPicture.asset(
                      imageFor,
                    ),
                  ),
                  globals.sizedBoxWidth30px,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
