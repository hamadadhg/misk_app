import 'package:flutter/material.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_play_card_and_height_sized_box_quran_view.dart';

class CustomSliverFillRemainingQuranView extends StatelessWidget {
  const CustomSliverFillRemainingQuranView({
    super.key,
    required this.isAppearPlayCard,
  });
  final bool isAppearPlayCard;
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          SizedBoxHeight.heightExpanded,
          if (isAppearPlayCard)
            const CustomPlayCardAndHeightSizedBoxQuranView(),
          const BlackAndWhiteDividerComponent(blackOrWhite: 'black'),
          SizedBoxHeight.height10(context: context),
        ],
      ),
    );
  }
}
