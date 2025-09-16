import 'package:flutter/material.dart';
import 'package:misk/core/components/app_bar_image_and_text_and_divider_component.dart';
import 'package:misk/core/components/text_with_align_and_padding_component.dart';
import 'package:misk/core/components/two_texts_with_padding_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';

class CustomHeaderSilverViewSection extends StatelessWidget {
  const CustomHeaderSilverViewSection({super.key, required this.price});
  final String price;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const AppBarImageAndTextAndDividerComponent(text: 'حاسبة الزكاة'),
        SizedBoxHeight.height25(context: context),
        const TextWithAlignAndPaddingComponent(text: 'الفضة'),
        TwoTextsWithPaddingComponent(
          typeProduct: 'سعر الفضة للجرام',
          price: price,
        ),
      ],
    );
  }
}
