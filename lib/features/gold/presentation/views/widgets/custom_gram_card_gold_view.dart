import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/box_decorations.dart';
import 'package:misk/core/utils/padding/padding_without_child/only_padding_without_child.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomGramCardGoldView extends StatelessWidget {
  const CustomGramCardGoldView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      alignment: Alignment.center,
      margin: OnlyPaddingWithoutChild.left10(context: context),
      width: size.width * 0.08,
      height: size.height * 0.035,
      decoration: BoxDecorations.boxDecorationToGramCardGoldView(
        context: context,
      ),
      child: Text(
        'جرام',
        style: StyleToTexts.textStyleNormal12(context: context),
      ),
    );
  }
}
