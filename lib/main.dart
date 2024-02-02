import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:from_usa/pages/bag/making_apurchase_and_delivery_page/making_a_purchase_and_delivery_page.dart';
import 'package:from_usa/pages/bag/making_delivery_only_page/add_estimated_cost_page.dart';
import 'package:from_usa/pages/bag/making_delivery_only_page/widgets/add_invoice.dart';
import 'package:from_usa/pages/bag/product_selection_page.dart';
import 'package:from_usa/pages/bag/main_page.dart';
import 'package:from_usa/pages/informationPanel/part_screen_four.dart';
import 'package:from_usa/pages/informationPanel/part_screen_one.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;
import 'package:from_usa/pages/profile/profile_main.dart';
import 'package:from_usa/pages/userAuthorization/welcomeFromUsaScreen/welcome_from_usa_screen.dart';

import 'pages/bag/buy_and_delivery_page.dart';
import 'pages/bag/making_delivery_only_page/information_about_warehouses_page.dart';
import 'pages/bag/making_delivery_only_page/making_delivery_only_page.dart';
import 'pages/home/main_page.dart';
import 'pages/home/delivery_only_page.dart';
import 'pages/home/delivery_rates_page.dart';
import 'pages/home/purchase_and_delivery_page.dart';
import 'pages/informationPanel/part_screen_five.dart';

void main() {
  runApp(
  const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    globals.updateScreenSize(context);
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white,
      ),
      child: Scaffold(
        body: StoreCatalog(),
      ),
    );
  }
}
