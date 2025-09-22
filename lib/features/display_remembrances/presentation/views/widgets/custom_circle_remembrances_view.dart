import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/box_decorations.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomCircleRemembrancesView extends StatelessWidget {
  const CustomCircleRemembrancesView({super.key, required this.currentIndex});
  final String currentIndex;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      alignment: Alignment.center,
      height: size.height * 0.11,
      width: size.width * 0.2,
      decoration: BoxDecorations.boxDecorationToCircleRemembrancesView(
        context: context,
      ),
      child: Text(
        currentIndex,
        style: StyleToTexts.textStyleNormal18(
          context: context,
        ).copyWith(color: StyleToColors.whiteColor),
      ),
    );
  }
}
