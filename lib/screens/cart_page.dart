import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:Lottie.network('https://assets8.lottiefiles.com/packages/lf20_qh5z2fdq.json')),
    );
  }
}
