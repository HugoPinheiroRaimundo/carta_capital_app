import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultConfig {
  static String? defaultFont = GoogleFonts.workSans().fontFamily;
  static Color defaultThemeColor = const Color(0xFFCD1719);
  static String? buttonFont = GoogleFonts.amiko().fontFamily;
  static String? defaultTextCard =
      """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

Scelerisque eleifend donec pretium lputate sapien nec sagittis aliquam. Pharetra et ultrices neque ornare aenean esmod. Eget nunc scelerisque viverra mauris in. Feugiat nibh sed pulvinar proin gravida hendrerit lectus a. Vitae turpis massa sed elementum tempus. """;

  TextStyle defaultTextStyle(
      bool isBold, bool isRed, bool isUnderline, String? font, double size) {
    return TextStyle(
      decoration: isUnderline ? TextDecoration.underline : null,
      fontFamily: font,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: isRed ? defaultThemeColor : Colors.black,
      fontSize: size,
    );
  }
}
