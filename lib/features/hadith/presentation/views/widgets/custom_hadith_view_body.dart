import 'package:flutter/material.dart';
import 'package:misk/core/components/app_bar_image_and_text_and_divider_component.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/hadith/presentation/views/widgets/custom_generate_cards_hadith_view.dart';

class CustomHadithViewBody extends StatelessWidget {
  const CustomHadithViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SizedBoxHeight.height25(context: context),
              const AppBarImageAndTextAndDividerComponent(
                text: 'الحديث النبوي',
              ),
              SizedBoxHeight.height25(context: context),
              const CustomGenerateCardsHadithView(),
              Expanded(child: SizedBoxHeight.height15(context: context)),
              const BlackAndWhiteDividerComponent(blackOrWhite: 'black'),
              SizedBoxHeight.height10(context: context),
            ],
          ),
        ),
      ],
    );
  }
}
