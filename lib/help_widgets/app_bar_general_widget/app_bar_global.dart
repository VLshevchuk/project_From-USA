import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarGlobal extends StatelessWidget implements PreferredSizeWidget {
  final Function()? backPage;
  final String? imageLeft;
  final Widget textWidget;
  final String imageRight;
  final Function()? svgButton;
  const AppBarGlobal(
      {required this.backPage,
      required this.textWidget,
      required this.imageRight,
      required this.svgButton,
       this.imageLeft,

      super.key});

  @override
  Size get preferredSize => const Size.fromHeight(
        44.0,
      );
  @override
  AppBar build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: backPage,
            child:
            imageLeft!=null?
             SvgPicture.asset(
              imageLeft!,
            ):SizedBox(),
          ),
          textWidget,
          IconButton(
            onPressed: svgButton,
            icon: SvgPicture.asset(
              imageRight,
            ),
          ),
        ],
      ),
    );
  }
}
