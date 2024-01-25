import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class RowWidget extends StatelessWidget {
  final Widget text;
  final String svgpicture;
  final Color color;
  final bool? a;
  const RowWidget({
    super.key,
    required this.text,
    required this.svgpicture,
    // this.color,
    this.color = Colors.black,
    this.a,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              svgpicture,
              width: 26.0,
              height: 24.0,
              colorFilter: ColorFilter.mode(
                color,
                BlendMode.srcATop,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            text,
          ],
        ),
        a == true
            ? Row(
                children: [
                  globals.sizedBoxWidth40px,
                  SvgPicture.asset(
                    "assetsDelivery/assetsSvg/newvector.svg",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const TextLato14pxW700(
                      text: 'Адреса складов',
                    ),
                  ),
                ],
              )
            : const SizedBox()
      ],
    );
  }
}
