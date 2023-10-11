import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledFont extends StatelessWidget {
  const StyledFont(this.textData, this.textSize, this.textWeight, this.textColor, {super.key});

  final String textData;
  final double textSize;
  final FontWeight textWeight;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: GoogleFonts.lato(
        fontSize: textSize,
        fontWeight: textWeight,
        color: textColor,
      ),
    );
  }

}