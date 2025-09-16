import 'package:flutter/material.dart';
import 'package:misk/core/utils/padding/padding_with_child/symmetric_padding_with_child.dart';
import 'package:misk/core/utils/sized/sized_box_width.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';
import 'package:misk/gen/assets.gen.dart';

class CustomContainCardRemembrancesView extends StatelessWidget {
  const CustomContainCardRemembrancesView({
    super.key,
    required this.text,
    required this.image,
  });
  final String text;
  final Widget image;
  @override
  Widget build(BuildContext context) {
    return SymmetricPaddingWithChild.horizontal15(
      context: context,
      child: Row(
        children: [
          Assets.images.leftBackArrowImage.image(),
          SizedBoxWidth.widthExpanded,
          Text(text, style: StyleToTexts.textStyleNormal14(context: context)),
          SizedBoxWidth.width15(context: context),
          image,
        ],
      ),
    );
  }
}
