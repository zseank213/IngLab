import 'package:flutter/material.dart';
import 'package:inglab/lib.dart';

/// XXL = 28
/// Extra Large = 24
/// Large = 20
/// Medium = 16
/// Normal = 14
/// Small = 12
/// Button = 10

TextStyle textButton({bool? isMedium = false, bool? isBold = false, required Color color, bool? isUnderline}) {
  return TextStyle(
    fontSize: 10,
    fontWeight: isBold == true
        ? FontWeight.bold
        : isMedium == true
            ? FontWeight.w500
            : FontWeight.w400,
    color: color,
    decoration: isUnderline == true ? TextDecoration.underline : TextDecoration.none,
  );
}

TextStyle textSmall({bool? isMedium = false, bool? isBold = false, required Color color, bool? isUnderline}) {
  return TextStyle(
    fontSize: 12,
    fontWeight: isBold == true
        ? FontWeight.bold
        : isMedium == true
            ? FontWeight.w500
            : FontWeight.w400,
    color: color,
    decoration: isUnderline == true ? TextDecoration.underline : TextDecoration.none,
  );
}

TextStyle textNormal({bool? isMedium = false, bool? isBold = false, required Color color, bool? isUnderline}) {
  return TextStyle(
    fontSize: 14,
    fontWeight: isBold == true
        ? FontWeight.bold
        : isMedium == true
            ? FontWeight.w500
            : FontWeight.w400,
    color: color,
    decoration: isUnderline == true ? TextDecoration.underline : TextDecoration.none,
  );
}

TextStyle textMedium({bool? isMedium = false, bool? isBold = false, required Color color, bool? isUnderline}) {
  return TextStyle(
    fontSize: 16,
    fontWeight: isBold == true
        ? FontWeight.bold
        : isMedium == true
            ? FontWeight.w500
            : FontWeight.w400,
    color: color,
    decoration: isUnderline == true ? TextDecoration.underline : TextDecoration.none,
  );
}

TextStyle textLarge({bool? isMedium = false, bool? isBold = false, required Color color, bool? isUnderline}) {
  return TextStyle(
    fontSize: 20,
    fontWeight: isBold == true
        ? FontWeight.bold
        : isMedium == true
            ? FontWeight.w500
            : FontWeight.w400,
    color: color,
    decoration: isUnderline == true ? TextDecoration.underline : TextDecoration.none,
  );
}

TextStyle textExtraLarge({bool? isMedium = false, bool? isBold = false, required Color color, bool? isUnderline}) {
  return TextStyle(
    fontSize: 24,
    fontWeight: isBold == true
        ? FontWeight.bold
        : isMedium == true
            ? FontWeight.w500
            : FontWeight.w400,
    color: color,
    decoration: isUnderline == true ? TextDecoration.underline : TextDecoration.none,
  );
}

TextStyle textXXL({bool? isMedium = false, bool? isBold = false, required Color color, bool? isUnderline}) {
  return TextStyle(
    fontSize: 28,
    fontWeight: isBold == true
        ? FontWeight.bold
        : isMedium == true
            ? FontWeight.w500
            : FontWeight.w400,
    color: color,
    decoration: isUnderline == true ? TextDecoration.underline : TextDecoration.none,
    decorationColor: neutral40,
  );
}

TextStyle textXXXL({bool? isMedium = false, bool? isBold = false, required Color color, bool? isUnderline}) {
  return TextStyle(
    fontSize: 75,
    fontWeight: isBold == true
        ? FontWeight.bold
        : isMedium == true
            ? FontWeight.w500
            : FontWeight.w400,
    color: color,
    decoration: isUnderline == true ? TextDecoration.underline : TextDecoration.none,
    decorationColor: neutral40,
  );
}

TextStyle textFull({bool? isMedium = false, bool? isBold = false, required Color color, bool? isUnderline}) {
  return TextStyle(
    fontSize: 50,
    fontWeight: isBold == true
        ? FontWeight.bold
        : isMedium == true
            ? FontWeight.w500
            : FontWeight.w400,
    color: color,
    decoration: isUnderline == true ? TextDecoration.underline : TextDecoration.none,
    decorationColor: neutral40,
  );
}

TextStyle textHintStyle() {
  return const TextStyle(
    color: neutral70,
    fontSize: 13,
  );
}

TextStyle textFieldStyle() {
  return const TextStyle(
    fontSize: 13,
    color: neutral80,
  );
}

TextStyle textErrorTextFieldStyle() {
  return const TextStyle(
    backgroundColor: Colors.transparent,
    fontSize: 12.0,
    color: Color(0xffFF494A),
    fontWeight: FontWeight.w600,
  );
}
