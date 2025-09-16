import 'package:flutter/material.dart';
import 'package:misk/core/utils/padding/padding_with_child/only_padding_with_child.dart';
import 'package:misk/core/utils/sized/sized_box_width.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';
import 'package:misk/gen/assets.gen.dart';

class CustomPrefixFormFieldGoldView extends StatelessWidget {
  const CustomPrefixFormFieldGoldView({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return OnlyPaddingWithChild.left3AndRight20(
      context: context,
      child: Row(
        children: [
          Assets.images.bottomBackArrowImage.image(),
          SizedBoxWidth.widthExpanded,
          Text(
            text,
            style: StyleToTexts.textStyleNormal14(
              context: context,
            ).copyWith(color: StyleToColors.deeepGreyColor),
          ),
        ],
      ),
    );
  }
}
