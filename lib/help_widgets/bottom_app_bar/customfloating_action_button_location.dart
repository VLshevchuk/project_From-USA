import 'package:flutter/material.dart';

class CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  CustomFloatingActionButtonLocation(
      {this.top, this.bottom, this.left, this.right});

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    double offsetX = left ?? 0.0;
    double offsetY = top ?? 0.0;

    if (right != null) {
      offsetX = scaffoldGeometry.scaffoldSize.width - right!;
    }

    if (bottom != null) {
      offsetY = scaffoldGeometry.scaffoldSize.height - bottom!;
    }

    return Offset(offsetX, offsetY);
  }
}