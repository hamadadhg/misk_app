import 'package:flutter/material.dart';
import 'package:misk/core/components/app_bar_image_and_text_and_divider_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomSliverToBoxAdapterZakatView extends StatelessWidget {
  const CustomSliverToBoxAdapterZakatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBoxHeight.height25(context: context),
          const AppBarImageAndTextAndDividerComponent(text: 'حاسبة الزكاة'),
          SizedBoxHeight.height25(context: context),
          Text(
            'اختر البنود التي ترغب بحساب زكاتها',
            style: StyleToTexts.textStyleBold18(context: context),
          ),
          SizedBoxHeight.height20(context: context),
        ],
      ),
    );
  }
}
