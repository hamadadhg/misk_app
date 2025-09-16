import 'package:flutter/material.dart';
import 'package:misk/gen/assets.gen.dart';

class CustomTwoImagesSplashView extends StatelessWidget {
  const CustomTwoImagesSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.images.leftMinaretAndMiskArabicEnglishImage.image(),
        Assets.images.rightMinaret.image(),
      ],
    );
  }
}
