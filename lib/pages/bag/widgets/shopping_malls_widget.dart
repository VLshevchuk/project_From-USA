import 'package:flutter/material.dart';

class ShoppingMallsWidget extends StatelessWidget {
  final String imageAsset;
  const ShoppingMallsWidget({
    super.key,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10.0),
        color: const Color.fromRGBO(248, 250, 253, 1.0),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            imageAsset,
          ),
        ),
      ),
    );
  }
}
