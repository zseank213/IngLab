import 'package:flutter/material.dart';
import 'package:inglab/lib.dart';

Widget bigButton({
  required String text,
  required void Function()? onTap,
  void Function()? onTapDisable,
  bool isLoading = false,
  bool isChange = true,
  bool shadow = false,
  Widget? icon,
  TextStyle? textStyle,
  Color color = primaryColor,
  Color circularProgressColor = Colors.white,
}) {
  return InkWell(
    onTap: isChange ? onTap : onTapDisable,
    child: Container(
      height: 44,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isChange ? color : greyPrimaryColor,
        boxShadow: [
          shadow == true
              ? BoxShadow(
                  color: color.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 9,
                  offset: const Offset(0, 4), // changes position of shadow
                )
              : const BoxShadow(),
        ],
      ),
      child: Center(
        child: isLoading == true
            ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: circularProgressColor,
                  strokeWidth: 3,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[
                    icon,
                    AppDimens.horizontalSpace8,
                  ],
                  Text(
                    text,
                    style: textStyle ??
                        textNormal(
                          color: neutral90,
                        ),
                  ),
                ],
              ),
      ),
    ),
  );
}
