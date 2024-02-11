// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GNav(
          color: Color.fromRGBO(86, 86, 86, 1),
          activeColor: Color.fromARGB(255, 220, 220, 220),
          tabBackgroundColor: Color.fromARGB(255, 99, 99, 99),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          tabBorderRadius: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'Cart',
            )
          ]),
    );
  }
}
