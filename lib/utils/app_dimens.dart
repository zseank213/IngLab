import 'package:flutter/material.dart';

class AppDimens {
  // Padding
  static double? _paddingTop;
  static double? _paddingBottom;
  static double? fullHeightWithoutAppbar;
  static double? _fullHeight;
  static double? _middleHeight;
  static double? fiturSize;

  static Widget paddingTop = SizedBox(height: _paddingTop);
  static Widget middleHeight = SizedBox(height: _middleHeight);
  static Widget paddingBottom = SizedBox(height: _paddingBottom);
  static Widget containerFull = Container(height: _fullHeight);
  static Widget fiturContainerSize = Container(height: fiturSize);
  static Widget containerFullWithoutAppbar = Container(height: fullHeightWithoutAppbar);

  // Vertical spacing constants.
  static const double _verticalSpace0 = 0.0;
  static const double _verticalSpace2 = 2.0;
  static const double _verticalSpace4 = 4.0;
  static const double _verticalSpace6 = 6.0;
  static const double _verticalSpace8 = 8.0;
  static const double _verticalSpace9 = 9.0;
  static const double _verticalSpace10 = 10.0;
  static const double _verticalSpace12 = 12.0;
  static const double _verticalSpace14 = 14.0;
  static const double _verticalSpace16 = 16.0;
  static const double _verticalSpace18 = 18.0;
  static const double _verticalSpace20 = 20.0;
  static const double _verticalSpace22 = 22.0;
  static const double _verticalSpace24 = 24.0;
  static const double _verticalSpace30 = 30.0;
  static const double _verticalSpace32 = 32.0;
  static const double _verticalSpace39 = 39.0;
  static const double _verticalSpace40 = 40.0;
  static const double _verticalSpace48 = 48.0;
  static const double _verticalSpace60 = 60.0;
  static const double _verticalSpace74 = 74.0;
  static const double _verticalSpace100 = 100.0;

  static const double _verticalSpace400 = 400.0;

  static const Widget verticalSpace0 = SizedBox(height: _verticalSpace0);
  static const Widget verticalSpace2 = SizedBox(height: _verticalSpace2);
  static const Widget verticalSpace4 = SizedBox(height: _verticalSpace4);
  static const Widget verticalSpace6 = SizedBox(height: _verticalSpace6);
  static const Widget verticalSpace8 = SizedBox(height: _verticalSpace8);
  static const Widget verticalSpace9 = SizedBox(height: _verticalSpace9);
  static const Widget verticalSpace10 = SizedBox(height: _verticalSpace10);
  static const Widget verticalSpace12 = SizedBox(height: _verticalSpace12);
  static const Widget verticalSpace14 = SizedBox(height: _verticalSpace14);
  static const Widget verticalSpace16 = SizedBox(height: _verticalSpace16);
  static const Widget verticalSpace18 = SizedBox(height: _verticalSpace18);
  static const Widget verticalSpace20 = SizedBox(height: _verticalSpace20);
  static const Widget verticalSpace22 = SizedBox(height: _verticalSpace22);
  static const Widget verticalSpace24 = SizedBox(height: _verticalSpace24);
  static const Widget verticalSpace30 = SizedBox(height: _verticalSpace30);
  static const Widget verticalSpace32 = SizedBox(height: _verticalSpace32);
  static const Widget verticalSpace39 = SizedBox(height: _verticalSpace39);
  static const Widget verticalSpace40 = SizedBox(height: _verticalSpace40);
  static const Widget verticalSpace48 = SizedBox(height: _verticalSpace48);
  static const Widget verticalSpace60 = SizedBox(height: _verticalSpace60);
  static const Widget verticalSpace74 = SizedBox(height: _verticalSpace74);
  static const Widget verticalSpace100 = SizedBox(height: _verticalSpace100);

  static const Widget verticalSpace400 = SizedBox(height: _verticalSpace400);

  // Horizontal spacing constants.
  static const double _horizontalSpace2 = 2.0;
  static const double _horizontalSpace4 = 4.0;
  static const double _horizontalSpace6 = 6.0;
  static const double _horizontalSpace7 = 7.0;
  static const double _horizontalSpace8 = 8.0;
  static const double _horizontalSpace9 = 9.0;
  static const double _horizontalSpace10 = 10.0;
  static const double _horizontalSpace12 = 12.0;
  static const double _horizontalSpace13 = 13.0;
  static const double _horizontalSpace14 = 14.0;
  static const double _horizontalSpace16 = 16.0;
  static const double _horizontalSpace18 = 18.0;
  static const double _horizontalSpace20 = 20.0;
  static const double _horizontalSpace24 = 24.0;
  static const double _horizontalSpace28 = 28.0;
  static const double _horizontalSpace30 = 30.0;
  static const double _horizontalSpace32 = 32.0;
  static const double _horizontalSpace33 = 33.0;
  static const double _horizontalSpace50 = 50.0;
  static const double _horizontalSpace74 = 74.0;
  static const double _horizontalSpace100 = 100.0;

  static const Widget horizontalSpace2 = SizedBox(width: _horizontalSpace2);
  static const Widget horizontalSpace4 = SizedBox(width: _horizontalSpace4);
  static const Widget horizontalSpace6 = SizedBox(width: _horizontalSpace6);
  static const Widget horizontalSpace7 = SizedBox(width: _horizontalSpace7);
  static const Widget horizontalSpace8 = SizedBox(width: _horizontalSpace8);
  static const Widget horizontalSpace9 = SizedBox(width: _horizontalSpace9);
  static const Widget horizontalSpace10 = SizedBox(width: _horizontalSpace10);
  static const Widget horizontalSpace12 = SizedBox(width: _horizontalSpace12);
  static const Widget horizontalSpace13 = SizedBox(width: _horizontalSpace13);
  static const Widget horizontalSpace14 = SizedBox(width: _horizontalSpace14);
  static const Widget horizontalSpace16 = SizedBox(width: _horizontalSpace16);
  static const Widget horizontalSpace18 = SizedBox(width: _horizontalSpace18);
  static const Widget horizontalSpace20 = SizedBox(width: _horizontalSpace20);
  static const Widget horizontalSpace24 = SizedBox(width: _horizontalSpace24);
  static const Widget horizontalSpace28 = SizedBox(width: _horizontalSpace28);
  static const Widget horizontalSpace30 = SizedBox(width: _horizontalSpace30);
  static const Widget horizontalSpace32 = SizedBox(width: _horizontalSpace32);
  static const Widget horizontalSpace33 = SizedBox(width: _horizontalSpace33);
  static const Widget horizontalSpace50 = SizedBox(width: _horizontalSpace50);
  static const Widget horizontalSpace74 = SizedBox(width: _horizontalSpace74);
  static const Widget horizontalSpace100 = SizedBox(width: _horizontalSpace100);

  void init(context) {
    _paddingBottom = MediaQuery.of(context).padding.bottom;
    _paddingTop = MediaQuery.of(context).padding.top;
    _fullHeight = MediaQuery.of(context).size.height;
    _middleHeight = MediaQuery.of(context).size.height / 2;
    _middleHeight = MediaQuery.of(context).size.height / 2;
    fiturSize = (MediaQuery.of(context).size.width - 80) / 4;
    fullHeightWithoutAppbar = MediaQuery.of(context).size.height - Scaffold.of(context).appBarMaxHeight!;
  }

  Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double screenHeight(BuildContext context, {double dividedBy = 1, double reducedBy = 0.0}) {
    return (screenSize(context).height - reducedBy) / dividedBy;
  }

  double screenWidth(BuildContext context, {double dividedBy = 1, double reducedBy = 0.0}) {
    return (screenSize(context).width - reducedBy) / dividedBy;
  }

  double screenHeightExcludingToolbar(BuildContext context, {double dividedBy = 1}) {
    return screenHeight(context, dividedBy: dividedBy, reducedBy: kToolbarHeight);
  }
}

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context, {double dividedBy = 1, double reducedBy = 0.0}) {
  return (screenSize(context).height - reducedBy) / dividedBy;
}

double screenWidth(BuildContext context, {double dividedBy = 1, double reducedBy = 0.0}) {
  return (screenSize(context).width - reducedBy) / dividedBy;
}

double screenHeightExcludingToolbar(BuildContext context, {double dividedBy = 1}) {
  return screenHeight(context, dividedBy: dividedBy, reducedBy: kToolbarHeight);
}
