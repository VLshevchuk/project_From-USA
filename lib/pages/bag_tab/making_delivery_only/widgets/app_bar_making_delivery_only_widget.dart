import 'package:flutter/material.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_widget.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag_tab/function_buy_and_delivery.dart';


class AppBarMakingDeliveryOnlyWidget extends StatelessWidget {
  const AppBarMakingDeliveryOnlyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarGeneralWidget(
      backPage: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FunctionBuyAndDelivery(),
          ),
        );
      },
      imageLeft: 'assetsDelivery/assetsSvg/left2.svg',
      textWidget: const TextWidgets(
        text: "Только  доставка",
        fontFamily: 'Lato',
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
        color: Color.fromRGBO(19, 59, 119, 1.0),
        letterSpacing: 0.5,
      ),
      imageRight: 'assetsBag/assetsSvg/video.svg',
    );
  }
}
