/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/features/display_hadith/presentation/views/widgets/custom_text_normal18_display_hadith_view.dart';

class CustomFullTextsInsideCardDisplayHadithView extends StatelessWidget {
  const CustomFullTextsInsideCardDisplayHadithView({
    super.key,
    required this.displayHadithsList,
    required this.currentIndex,
  });
  final List<Map<String, dynamic>> displayHadithsList;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextNormal18DisplayHadithView(
          text: displayHadithsList[currentIndex]['hadith'],
        ),
        SizedBoxHeight.height15(context: context),
        CustomTextNormal18DisplayHadithView(
          text: displayHadithsList[currentIndex]['narrator'],
          color: StyleToColors.littleOliveGreenColor,
        ),
        SizedBoxHeight.height15(context: context),
        CustomTextNormal18DisplayHadithView(
          text: displayHadithsList[currentIndex]['attribution'],
          color: StyleToColors.redColor,
        ),
        SizedBoxHeight.height15(context: context),
        CustomTextNormal18DisplayHadithView(
          text: displayHadithsList[currentIndex]['source'],
          color: StyleToColors.blueColor,
        ),
      ],
    );
  }
}
*/
