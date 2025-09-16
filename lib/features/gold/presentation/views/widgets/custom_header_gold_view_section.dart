import 'package:flutter/material.dart';
import 'package:misk/core/components/app_bar_image_and_text_and_divider_component.dart';
import 'package:misk/core/components/text_with_align_and_padding_component.dart';
import 'package:misk/core/components/two_texts_with_padding_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';

class CustomHeaderGoldViewSection extends StatelessWidget {
  const CustomHeaderGoldViewSection({super.key, required this.goldPrice});
  final String goldPrice;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const AppBarImageAndTextAndDividerComponent(text: 'حاسبة الزكاة'),
        SizedBoxHeight.height25(context: context),
        const TextWithAlignAndPaddingComponent(text: 'الذهب'),
        TwoTextsWithPaddingComponent(
          typeProduct: 'سعر الذهب (عيار ٢٤) للجرام',
          price: goldPrice,
        ),
      ],
    );
  }
}
