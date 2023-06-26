import 'package:flutter/material.dart';

class SmoothAnimationRoute<T> extends PageRoute<T> {
  SmoothAnimationRoute(this.child);

  @override
  // TODO: implement barrierColor
  Color get barrierColor => Colors.transparent;

  @override
  String get barrierLabel => "";

  final Widget child;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);
}
