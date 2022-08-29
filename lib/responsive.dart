import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key, required this.mobile, required this.tab}) : super(key: key);
  final Widget mobile;
  final Widget  tab;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth < 668) {
          return mobile;
        } else {
          return tab;
        }
      }),
    );
  }
}
