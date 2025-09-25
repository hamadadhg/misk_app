/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/sized/sized_box_width.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';
import 'package:misk/gen/assets.gen.dart';

class ChooseOptionFromClickOnRightOrLeftArrowComponent extends StatelessWidget {
  const ChooseOptionFromClickOnRightOrLeftArrowComponent({
    super.key,
    required this.currentIndex,
    required this.totalLength,
    required this.onNext,
    required this.onBack,
  });
  final int currentIndex, totalLength;
  final void Function() onNext, onBack;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onBack,
          child: Assets.images.leftBackArrowImage.image(),
        ),
        SizedBoxWidth.width40(context: context),
        Text(
          'الذكر ${currentIndex + 1} من $totalLength',
          style: StyleToTexts.textStyleBold13(context: context),
        ),
        SizedBoxWidth.width40(context: context),
        GestureDetector(
          onTap: onNext,
          child: Assets.images.rightGoArrowImage.image(),
        ),
      ],
    );
  }
}
*/
