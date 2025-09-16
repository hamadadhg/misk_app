import 'package:flutter/material.dart';
import 'package:misk/core/components/price_card_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class TextAndPriceCardComponent extends StatelessWidget {
  const TextAndPriceCardComponent({super.key, required this.price});
  final num price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'إجمالي الزكاة المستحقة',
          style: StyleToTexts.textStyleBold18(context: context),
        ),
        SizedBoxHeight.height10(context: context),
        PriceCardComponent(price: price),
      ],
    );
  }
}
