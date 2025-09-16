import 'package:flutter/material.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomImageAndTimeAndTypePrayHomeView extends StatelessWidget {
  const CustomImageAndTimeAndTypePrayHomeView({
    super.key,
    required this.typePray,
    required this.time,
    required this.image,
  });
  final String typePray, time;
  final Widget image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          typePray,
          style: StyleToTexts.textStyleSemiBold12(context: context),
        ),
        SizedBoxHeight.height5(context: context),
        image,
        SizedBoxHeight.height5(context: context),
        Text(
          time,
          style: StyleToTexts.textStyleNormal12(
            context: context,
          ).copyWith(color: StyleToColors.whiteColor),
        ),
      ],
    );
  }
}
