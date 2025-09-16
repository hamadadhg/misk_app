import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/box_decorations.dart';
import 'package:misk/core/utils/padding/padding_without_child/only_padding_without_child.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class PriceCardComponent extends StatelessWidget {
  const PriceCardComponent({super.key, required this.price});
  final num price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * 0.077,
      width: size.width * 0.44,
      padding: OnlyPaddingWithoutChild.left10AndRight10(context: context),
      alignment: Alignment.center,
      decoration: BoxDecorations.boxDecorationPriceCard(context: context),
      child: Text(
        price.toString(),
        textAlign: TextAlign.center,
        style: StyleToTexts.textStyleBold18(
          context: context,
        ).copyWith(color: StyleToColors.greyColor),
      ),
    );
  }
}
