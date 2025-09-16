import 'package:flutter/material.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/components/text_and_price_card_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';

class CustomBottomCoinsViewSection extends StatelessWidget {
  const CustomBottomCoinsViewSection({super.key, required this.price});
  final num price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextAndPriceCardComponent(price: price),
        SizedBoxHeight.heightExpanded,
        const BlackAndWhiteDividerComponent(blackOrWhite: 'black'),
      ],
    );
  }
}
