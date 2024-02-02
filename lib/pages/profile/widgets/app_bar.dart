import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class AppBarProfile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarProfile({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(
        56.0,
      );
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 56.0,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              "assets_profile/assetsSvg/notification7.svg",
              colorFilter: const ColorFilter.mode(
                Color.fromRGBO(19, 59, 119, 1),
                BlendMode.srcATop,
              ),
            ),
          ),
          globals.sizedBoxWidth20px,
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              "assets_profile/assetsSvg/setting7.svg",
              colorFilter: const ColorFilter.mode(
                Color.fromRGBO(19, 59, 119, 1),
                BlendMode.srcATop,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
