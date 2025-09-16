import 'package:flutter/material.dart';
import 'package:misk/core/utils/padding/padding_with_child/only_padding_with_child.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class TextWithAlignAndPaddingComponent extends StatelessWidget {
  const TextWithAlignAndPaddingComponent({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return OnlyPaddingWithChild.right30(
      context: context,
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          text,
          style: StyleToTexts.textStyleBold22(context: context),
        ),
      ),
    );
  }
}
