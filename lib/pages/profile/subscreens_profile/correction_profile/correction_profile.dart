import 'package:flutter/material.dart';
import 'package:from_usa/help_widgets/app_bar_general_widget/app_bar_global.dart';
import 'package:from_usa/pages/profile/profile_main.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class CorrectionProfile extends StatelessWidget {
  const CorrectionProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarGlobal(
        backPage: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileMain(),
            ),
          );
        },
        imageLeft: 'assetsDelivery/assetsSvg/left2.svg',
        textWidget: Text('Личные данные',style: globals.textStyleFW800WFFLatoFS20LS05,),
        imageRight: 'assetsBag/assetsSvg/video.svg',
        svgButton: () {},
      ),
    );
  }
}
