import 'package:flutter/material.dart';
import 'package:from_usa/pages/bag_tab/making_apurchase_and_delivery/making_a_purchase_and_delivery.dart';
import 'package:from_usa/pages/bag_tab/product_selection.dart';
import 'package:from_usa/pages/bag_tab/store_catalog_main_screen.dart';
import 'package:from_usa/pages/informationPanel/panelScreenFour/panel_screen_four.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

import 'pages/deliveryRegistrationPanel/function_delivery_only.dart';
import 'pages/deliveryRegistrationPanel/function_delivery_rates.dart';
import 'pages/deliveryRegistrationPanel/function_purchase_and_delivery.dart';
import 'pages/informationPanel/panelScreenLast/panel_screen_last.dart';

void main() {
  runApp(
     const MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    globals.updateScreenSize(context);
    return const Scaffold(
      body: ProductSelection(),
    );
  }
}

