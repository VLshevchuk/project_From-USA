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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 50,
          width: 355.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            image: const DecorationImage(
                image: AssetImage("assetsBag/assetsImage/rectangle.png"),
                fit: BoxFit.none,
                alignment: Alignment.topCenter),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: onPressedFirst,
                icon: SvgPicture.asset(
                  imageFirst,
                ),
              ),
              IconButton(
                onPressed: onPressedTwo,
                icon: SvgPicture.asset(
                  imageTwo,
                ),
              ),
              globals.sizedBoxWidth40px,
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
              IconButton(
                onPressed: onPressedThree,
                icon: SvgPicture.asset(
                  imageThree,
                ),
              ),
              IconButton(
                onPressed: onPressedFor,
                icon: SvgPicture.asset(
                  imageFor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
