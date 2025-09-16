import 'package:flutter/material.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';

class CustomSliverFillRemainingHomeViewSection extends StatelessWidget {
  const CustomSliverFillRemainingHomeViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          SizedBoxHeight.heightExpanded,
          const BlackAndWhiteDividerComponent(blackOrWhite: 'black'),
          SizedBoxHeight.height10(context: context),
        ],
      ),
    );
  }
}
