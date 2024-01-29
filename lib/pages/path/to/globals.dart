library my_project.globals;

import 'package:flutter/material.dart';

double width = 0.0;
double height = 0.0;

void updateScreenSize(BuildContext context) {
  width = MediaQuery.of(context).size.width;
  height = MediaQuery.of(context).size.height;
}

SizedBox sizedBoxWidth10px = const SizedBox(width: 10);
SizedBox sizedBoxWidth20px = const SizedBox(width: 20);
SizedBox sizedBoxWidth30px = const SizedBox(width: 30);

SizedBox sizedBoxWidth25px = const SizedBox(width: 25);

SizedBox sizedBoxWidth40px = const SizedBox(width: 40);

SizedBox sizedBoxHeight6px = const SizedBox(height: 6);

SizedBox sizedBoxHeight10px = const SizedBox(height: 10);
SizedBox sizedBoxHeight20px = const SizedBox(height: 20);
SizedBox sizedBoxHeight30px = const SizedBox(height: 30);

SizedBox sizedBoxHeight40px = const SizedBox(height: 40);
SizedBox sizedBoxHeight50px = const SizedBox(height: 50);

SizedBox sizedBoxHeight60px = const SizedBox(height: 60);
SizedBox sizedBoxHeight70px = const SizedBox(height: 70);
SizedBox sizedBoxHeight80px = const SizedBox(height: 80);

SizedBox sizedBoxHeight90px = const SizedBox(height: 90);
SizedBox sizedBoxHeight100px = const SizedBox(height: 100);

SizedBox sizedBoxHeight110px = const SizedBox(height: 110);

SizedBox sizedBoxHeight115px = const SizedBox(height: 115);

TextStyle textStyleFW800WFFLatoFS20LS05 = const TextStyle(
  fontWeight: FontWeight.w800,
  fontFamily: 'Lato',
  fontSize: 20.0,
  letterSpacing: 0.5,
  color: Color.fromRGBO(19, 59, 119, 1),
);

TextStyle textStyleFW700WFFLatoFS16LS05 = const TextStyle(
  fontWeight: FontWeight.w700,
  fontFamily: 'Lato',
  fontSize: 16.0,
  letterSpacing: 0.5,
  color: Color.fromRGBO(19, 59, 119, 1),
);

TextStyle textStyleFW700WFFLatoFS14LS05 = const TextStyle(
  fontWeight: FontWeight.w700,
  fontFamily: 'Lato',
  fontSize: 14.0,
  letterSpacing: 0.5,
  color: Color.fromRGBO(19, 59, 119, 1),
);

TextStyle textStyleFW400WFFLatoFS14LS1 = const TextStyle(
  fontWeight: FontWeight.w400,
  fontFamily: 'Lato',
  fontSize: 14.0,
  letterSpacing: 1.0,
  color: Color.fromRGBO(19, 59, 119, 1),
);
