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

class TextWidgetArt extends StatelessWidget {
  const TextWidgetArt({
    super.key,
    required this.title,
    required this.size,
    required this.weight,
    required this.color,
    required this.maxLength,
    this.align,
  });

  final String title;
  final double size;
  final FontWeight weight;
  final Color color;
  final TextAlign? align;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    String displayText = title.length > maxLength
        ? '${title.substring(0, maxLength)}...'
        : title;
    return Text(
      displayText,
      maxLines: 1,
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

class TextWidgetLink extends StatelessWidget {
  const TextWidgetLink({
    super.key,
    required this.title,
    required this.size,
    required this.weight,
    required this.color,
    required this.press,
    this.align,
  });

  final String title;
  final double size;
  final FontWeight weight;
  final Color color;
  final TextAlign? align;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Text(
        title,
        textAlign: align,
        style: GoogleFonts.poppins(
          fontSize: size,
          fontWeight: weight,
          color: color,
        ),
      ),
    );
  }
}
