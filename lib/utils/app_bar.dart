import 'package:flutter/material.dart';
import 'package:inglab/lib.dart';

PreferredSizeWidget appBarTextTitleNoElevation(
  context, {
  required String text,
  void Function()? onTapLeading,
  List<Widget>? action,
  bool? canBack,
  Color? backgroundColor,
  Color? textColor,
  Color? iconColor,
  bool? elevation,
  bool? isCenter,
  PreferredSizeWidget? bottom,
}) {
  return AppBar(
    elevation: elevation == true ? null : 0,
    leading: canBack == true
        ? InkWell(
            onTap: onTapLeading ??
                () {
                  Navigator.pop(context);
                },
            child: Icon(
              Icons.arrow_back,
              color: iconColor ?? neutral80,
            ),
          )
        : Container(),
    backgroundColor: backgroundColor ?? Colors.white,
    actions: action,
    title: Text(
      text,
      style: textMedium(color: textColor ?? neutral90, isBold: true),
    ),
    centerTitle: isCenter ?? false,
    bottom: bottom,
  );
}
