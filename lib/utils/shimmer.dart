import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  final double? borderRadius;

  const ShimmerEffect({Key? key, this.borderRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xffE5E5E6),
      highlightColor: Colors.white,
      direction: ShimmerDirection.ltr,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius == null ? 4 : borderRadius!),
        child: Container(
          decoration: const BoxDecoration(color: Color(0xffE5E5E6)),
        ),
      ),
    );
  }
}
