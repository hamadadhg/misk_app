/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/box_decorations.dart';
import 'package:misk/core/utils/padding/padding_without_child/symmetric_padding_without_child.dart';

class CardInsideItTextsDisplayComponent extends StatelessWidget {
  const CardInsideItTextsDisplayComponent({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height * 0.476,
      child: Container(
        margin: SymmetricPaddingWithoutChild.horizontal20(context: context),
        alignment: Alignment.center,
        padding: SymmetricPaddingWithoutChild.horizontal30(context: context),
        decoration: BoxDecorations.boxDecorationToDisplayRemembrancesText(
          context: context,
        ),
        child: child,
      ),
    );
  }
}
*/
