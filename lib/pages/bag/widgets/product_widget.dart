import 'package:flutter/material.dart';
import 'package:from_usa/help_widgets/text_widget.dart';
import 'package:from_usa/pages/bag/product_selection_page.dart';

class ProductWidget extends StatelessWidget {
  final String imgString;
  final String activePrice;
  final String notActivePrice;
  final String nameProduct;
  final String website;
  const ProductWidget({
    super.key,
    required this.imgString,
    required this.activePrice,
    required this.notActivePrice,
    required this.nameProduct,
    required this.website,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 230.0,
          width: 163.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              width: 2.0,
              color: const Color.fromRGBO(248, 250, 253, 1.0),
            ),
            color: const Color.fromRGBO(248, 250, 253, 1.0),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductSelection(),
                ),
              );
            },
            icon: Image.asset(imgString),
          ),
        ),
        Positioned(
          right: 5.0,
          top: 30.0,
          child: Container(
            width: 48.0,
            height: 48.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(0, 102, 255, 0.16),
            ),
            child: Center(
              child: TextWidgets(
                text: notActivePrice,
                fontFamily: "Poppins",
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: 0.75,
              ),
            ),
          ),
        ),
        Positioned(
          right: 5.0,
          child: Container(
            width: 48.0,
            height: 48.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(15, 196, 148, 1.0),
            ),
            child: Center(
              child: TextWidgets(
                text: activePrice,
                fontFamily: "Lato",
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(5, 98, 73, 1.0),
                letterSpacing: 1.0,
              ),
            ),
          ),
        ),
        Positioned(
          left: 20.0,
          bottom: 30.0,
          child: TextWidgets(
              text: nameProduct,
              fontFamily: "Lato",
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(0, 0, 1, 1.0),
              letterSpacing: 1.0),
        ),
        Positioned(
          left: 10.0,
          bottom: -5.0,
          child: TextButton(
            onPressed: () {},
            child: TextLato14pxW400(
              text: website,
            ),
          ),
        ),
      ],
    );
  }
}
