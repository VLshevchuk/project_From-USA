import 'package:flutter/material.dart';
import 'package:from_usa/pages/bag/product_selection/shadow_functions/making_delivery_only/Information_about_warehouses/information_about_warehouses.dart';
import 'package:from_usa/pages/bag/product_selection/shadow_functions/making_apurchase_and_delivery/making_a_purchase_and_delivery.dart';
import 'package:from_usa/pages/bag/product_selection/shadow_functions/making_delivery_only/add_estimated_cost.dart';
import 'package:from_usa/pages/bag/product_selection/shadow_functions/making_delivery_only/add_invoice.dart';
import 'package:from_usa/pages/bag/product_selection/product_selection.dart';
import 'package:from_usa/pages/bag/store_catalog_main_screen.dart';
import 'package:from_usa/pages/informationPanel/panelScreenFirst/panelScreenTwo/panelScreenThree/panelScreenFour/panel_screen_four.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main.dart';

import 'pages/bag/product_selection/shadow_functions/making_delivery_only/making_delivery_only.dart';
import 'pages/home/delivery_main_screen.dart';
import 'pages/home/function_delivery_only/function_delivery_only.dart';
import 'pages/home/function_delivery_rates/function_delivery_rates.dart';
import 'pages/home/function_purchase_and_delivery/function_purchase_and_delivery.dart';
import 'pages/informationPanel/panelScreenFirst/panelScreenTwo/panelScreenThree/panelScreenFour/panelScreenLast/panel_screen_last.dart';

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
      body: ProfileMain(),
    );
  }
}

  