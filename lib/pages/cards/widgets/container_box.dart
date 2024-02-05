import 'package:flutter/material.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class ContainerBox extends StatelessWidget {
  final String? text;
  final Widget? widgetSvg;
  final String? text2;
  final Widget? widget;
  const ContainerBox({
    super.key,
    this.text,
    this.widgetSvg,
    this.text2,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      height: 260,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.0,
        ),
        color: const Color.fromRGBO(247, 247, 247, 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 15.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                widgetSvg ??const SizedBox(),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  text ?? '',
                  style: globals.textStyleFW700WFFLatoFS16LS05
                ),
              ],
            ),
            globals.sizedBoxHeight10px,
            Text(
              text2 ?? '',style: globals.textStyleFW400WFFLatoFS14LS1,
            ),
            widget ?? const SizedBox() ,
          ],
        ),
      ),
    );
  }
}
