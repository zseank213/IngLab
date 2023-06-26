import 'package:flutter/material.dart';
import 'package:inglab/lib.dart';

class SkeletonContactCardWidget extends StatelessWidget {
  const SkeletonContactCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                const SizedBox(
                  height: 60,
                  width: 60,
                  child: ShimmerEffect(
                    borderRadius: 50,
                  ),
                ),
                AppDimens.horizontalSpace12,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 16,
                      child: const ShimmerEffect(),
                    ),
                    AppDimens.verticalSpace6,
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 16,
                      child: const ShimmerEffect(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => AppDimens.verticalSpace12,
      itemCount: 4,
    );
  }
}
