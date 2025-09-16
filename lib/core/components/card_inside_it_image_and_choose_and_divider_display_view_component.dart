import 'package:flutter/material.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/components/card_inside_it_texts_display_component.dart';
import 'package:misk/core/components/choose_option_from_click_on_right_or_left_arrow_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';

class CardInsideItImageAndChooseAndDividerDisplayViewComponent
    extends StatelessWidget {
  const CardInsideItImageAndChooseAndDividerDisplayViewComponent({
    super.key,
    required this.child,
    required this.currentIndex,
    required this.totalLength,
    required this.onNext,
    required this.onBack,
  });
  final Widget child;
  final int currentIndex, totalLength;
  final void Function() onNext, onBack;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardInsideItTextsDisplayComponent(child: child),
        SizedBoxHeight.height20(context: context),
        ChooseOptionFromClickOnRightOrLeftArrowComponent(
          currentIndex: currentIndex,
          totalLength: totalLength,
          onNext: onNext,
          onBack: onBack,
        ),
        SizedBoxHeight.heightExpanded,
        const BlackAndWhiteDividerComponent(blackOrWhite: 'black'),
      ],
    );
  }
}
