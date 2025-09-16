import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/box_decorations.dart';
import 'package:misk/core/utils/padding/padding_without_child/only_padding_without_child.dart';
import 'package:misk/core/utils/padding/padding_without_child/symmetric_padding_without_child.dart';

class BackgroundZakatCardComponent extends StatelessWidget {
  const BackgroundZakatCardComponent({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: SymmetricPaddingWithoutChild.horizontal25(context: context),
      padding: OnlyPaddingWithoutChild.top25AndBottom20AndRight15(
        context: context,
      ),
      decoration: BoxDecorations.boxDecorationCalculateZakatCardZakatView(
        context: context,
      ),
      child: child,
    );
  }
}
