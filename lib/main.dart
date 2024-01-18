import 'package:flutter/material.dart';
import 'package:from_usa/pages/bagTab/product_selection.dart';
import 'package:from_usa/pages/informationPanel/panelScreenFour/panel_screen_four.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

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
      body: PanelScreenFour(),
    );
  }
}

