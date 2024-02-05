import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GreenButton extends StatelessWidget {
  final Color fillColor;
  final Function()? onPressed;
  final String? svg;
  final bool change;
  final dynamic textWidget;
  final double? radius;
  final double? heightBox;
  final double? widthBox;
  const GreenButton({
    super.key,
    required this.fillColor,
    required this.onPressed,
    required this.change,
    this.textWidget,
    this.svg,
    this.radius, this.heightBox, this.widthBox,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width:widthBox?? 325.0,
          height:heightBox?? 56.0,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: fillColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  radius ?? 16.0,
                ),
              ),
            ),
            child: change == false
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textWidget ?? const SizedBox(),
                      svg != null
                          ? SvgPicture.asset(
                              svg!,
                            )
                          : const SizedBox(),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                        child: textWidget ?? const SizedBox(),
                      ),
                      svg != null
                          ? SvgPicture.asset(
                              svg!,
                            )
                          : const SizedBox(),
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
