import 'package:clean_arch/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidinghAnimation,
  });

  final Animation<Offset> slidinghAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidinghAnimation,
      builder: (context, child) => SlideTransition(
        position: slidinghAnimation,
        child: const Text(
          'Welcome To Bookly App',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
