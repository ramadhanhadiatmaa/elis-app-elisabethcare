import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.title,
    required this.size,
    required this.weight,
    required this.color,
    this.align,
  });

  final String title;
  final double size;
  final FontWeight weight;
  final Color color;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align,
      style: GoogleFonts.poppins(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}

class TextWidgetSent extends StatelessWidget {
  const TextWidgetSent({
    super.key,
    required this.title,
    required this.size,
    required this.weight,
    required this.color,
    this.align,
  });

  final String title;
  final double size;
  final FontWeight weight;
  final Color color;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      child: Text(
        title,
        textAlign: align,
        softWrap: true,
        style: GoogleFonts.poppins(
          fontSize: size,
          fontWeight: weight,
          color: color,
        ),
      ),
    );
  }
}
