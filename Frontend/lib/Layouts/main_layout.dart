import 'package:flutter/material.dart';
import 'package:app_pos/Layouts/Columns/column1.dart';
import 'package:app_pos/Layouts/Columns/column2.dart';
import 'package:app_pos/Layouts/Columns/column3.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  String? selectedNav;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column1(
        selectedNav: selectedNav,
        onItemSelected: (value) {
          setState(() {
            selectedNav = value;
          });
        },
      ),
      Column2(
        selectedNav: selectedNav,
      ),
      Column3(),
    ]);
  }
}
