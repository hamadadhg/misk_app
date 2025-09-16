import 'package:flutter/material.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';
import 'package:misk/features/display_remembrances/presentation/views/widgets/custom_circle_remembrances_view.dart';
import 'package:misk/core/components/card_inside_it_texts_display_component.dart';

class CustomCardTextsRemembrancesAndCircleRemembrancesView
    extends StatelessWidget {
  const CustomCardTextsRemembrancesAndCircleRemembrancesView({
    super.key,
    required this.displayRemembrancesList,
    required this.currentIndex,
  });
  final List<String> displayRemembrancesList;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Stack(
      clipBehavior: Clip.none, //no clip
      alignment: Alignment.center,
      children: [
        CardInsideItTextsDisplayComponent(
          child: Text(
            displayRemembrancesList[currentIndex],
            textDirection: TextDirection.rtl,
            style: StyleToTexts.textStyleNormal22(context: context),
          ),
        ),
        Positioned(
          bottom: -height * 0.056,
          child: CustomCircleRemembrancesView(currentIndex: currentIndex + 1),
        ),
      ],
    );
  }
}
