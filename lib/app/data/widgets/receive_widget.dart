import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color.dart';

class ReceiveWidget extends StatelessWidget {
  const ReceiveWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: FractionallySizedBox(
        alignment: Alignment.topRight,
        widthFactor: 0.75,
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              DecoratedBox(
                  decoration: const BoxDecoration(
                    color: cBlue,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20),),
                  ),
                  position: DecorationPosition.background,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    child: Text(
                      title,
                      softWrap: true,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: cWhite,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
