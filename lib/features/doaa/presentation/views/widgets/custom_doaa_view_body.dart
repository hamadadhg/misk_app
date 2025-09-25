/*
import 'package:flutter/material.dart';
import 'package:misk/core/components/app_bar_image_and_text_and_divider_component.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/doaa/presentation/views/widgets/custom_generate_cards_doaa_view.dart';

class CustomDoaaViewBody extends StatelessWidget {
  const CustomDoaaViewBody({super.key});

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
              const AppBarImageAndTextAndDividerComponent(text: 'الدعاء'),
              SizedBoxHeight.height25(context: context),
              const CustomGenerateCardsDoaaView(),
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
*/
