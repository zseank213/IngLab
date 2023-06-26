import 'package:flutter/material.dart';
import 'package:inglab/lib.dart';

InputDecoration textInputDecoration({
  String? hintText,
  TextStyle? hintTextStyle,
  String? helperText,
  Color? fillColor,
  int? errorMaxLines,
  bool? isFilled,
  bool? left,
  bool? isRounded = false,
  bool? right,
  Color? colorBorder,
  Color? enableColorBorder,
  Widget? suffixIcon,
  Widget? prefixIcon,
  Widget? icon,
  InputBorder? border,
  EdgeInsetsGeometry? contentPadding,
}) {
  return InputDecoration(
    icon: icon,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    border: border,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    fillColor: fillColor,
    hintText: hintText,
    helperText: helperText,
    hintStyle: hintTextStyle ?? textHintStyle(),
    filled: isFilled ?? false,
    errorMaxLines: errorMaxLines,
    contentPadding: contentPadding ?? const EdgeInsets.fromLTRB(16, 12, 16, 12),
    focusedBorder: outlineInputBorder(
      color: enableColorBorder,
      left: left ?? false,
      right: right ?? false,
      isRounded: isRounded,
    ),
    enabledBorder: outlineInputBorder(
      color: colorBorder,
      left: left ?? false,
      right: right ?? false,
      isRounded: isRounded,
    ),
    focusedErrorBorder: errorOutlineInputBorder(
      left: left ?? false,
      right: right ?? false,
    ),
    errorBorder: errorOutlineInputBorder(
      left: left ?? false,
      right: right ?? false,
    ),
    errorStyle: textErrorTextFieldStyle(),
  );
}
