/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/padding/padding_with_child/only_padding_with_child.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class TwoTextsWithPaddingComponent extends StatelessWidget {
  const TwoTextsWithPaddingComponent({
    super.key,
    required this.typeProduct,
    required this.price,
  });
  final String typeProduct, price;
  @override
  Widget build(BuildContext context) {
    return OnlyPaddingWithChild.right30(
      context: context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            typeProduct,
            style: StyleToTexts.textStyleNormal18(context: context),
          ),
          Text(
            price + r' $',
            style: StyleToTexts.textStyleNormal18(context: context),
          ),
        ],
      ),
    );
  }
}
*/
