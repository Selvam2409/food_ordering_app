import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/cart_page.dart';
import 'package:project/screens/home_page.dart';
import 'package:project/screens/profile.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index = 1;
  final screens = [
    const Profile(),
    const HomePage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        animationCurve: Curves.easeOut,
        buttonBackgroundColor: Colors.green,
        color: Colors.yellowAccent,
        index: index,
        animationDuration: const Duration(milliseconds: 400),
        backgroundColor: Colors.transparent,
        onTap: (currentIndex) {
          setState(() {
            index = currentIndex;
          });
        },
        items: const [
          Icon(
            Icons.account_circle_rounded,
            size: 30,
          ),
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
          ),
        ],
      ),
    );
  }
}
