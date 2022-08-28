import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tstyle extends StatelessWidget {
  const Tstyle({
    Key? key,
    required this.text,
    this.size = 25,
  }) : super(key: key);
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.breeSerif(
          fontSize: size,
        ));
  }
}
