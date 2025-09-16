import 'package:flutter/material.dart';
import 'package:misk/core/utils/padding/padding_with_child/symmetric_padding_with_child.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class GenerateTextsNormal18Component extends StatelessWidget {
  const GenerateTextsNormal18Component({super.key, required this.textsList});
  final List<String> textsList;
  @override
  Widget build(BuildContext context) {
    return SymmetricPaddingWithChild.horizontal10(
      context: context,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: List.generate(textsList.length, (index) {
            final item = textsList[index];
            return Text(
              item,
              style: StyleToTexts.textStyleNormal18(context: context),
            );
          }),
        ),
      ),
    );
  }
}
