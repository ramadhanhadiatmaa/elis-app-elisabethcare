import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidgetWidth extends StatelessWidget {
  ButtonWidgetWidth(
      {super.key,
      required this.title,
      required this.tColor,
      required this.bColor,
      required this.size,
      required this.rad,
      required this.press,
      required this.width,
      required this.height});

  final String title;
  final Color tColor, bColor;
  final double size, rad, width, height;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(rad),
        ),
      ),
      onPressed: press,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: width,
          height: height,
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: tColor,
                fontSize: size,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonWidgetWidthCus extends StatelessWidget {
  ButtonWidgetWidthCus(
      {super.key,
      required this.title,
      required this.tColor,
      required this.bColor,
      required this.size,
      required this.rad,
      required this.press,
      required this.width,
      required this.height});

  final String title;
  final Color tColor, bColor;
  final double size, rad, width, height;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(rad),
        ),
      ),
      onPressed: press,
      child: SizedBox(
        width: width,
        height: height,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: tColor,
              fontSize: size,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}