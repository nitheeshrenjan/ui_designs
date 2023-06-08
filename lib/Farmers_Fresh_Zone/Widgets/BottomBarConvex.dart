import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomBarConvex extends StatefulWidget {
  @override
  State<BottomBarConvex> createState() => _BottomBarConvexState();
}

class _BottomBarConvexState extends State<BottomBarConvex> {
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
        top: -12,
        color: Colors.black54,
        activeColor: Colors.green[700],
        backgroundColor: Colors.white,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.shopping_cart, title: 'Cart'),
          TabItem(icon: Icons.account_circle_outlined, title: 'Account'),
        ]);
  }
}
