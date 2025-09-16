import 'package:flutter/material.dart';
import 'package:misk/core/components/app_bar_image_and_text_and_divider_component.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/rosary/presentation/views/widgets/custom_counter_rosary_card_rosary_view.dart';
import 'package:misk/features/rosary/presentation/views/widgets/custom_remembrances_rosary_card_rosary_view.dart';

class CustomRosaryViewBody extends StatefulWidget {
  const CustomRosaryViewBody({super.key});

  @override
  State<CustomRosaryViewBody> createState() => _CustomRosaryViewBodyState();
}

class _CustomRosaryViewBodyState extends State<CustomRosaryViewBody> {
  String selectedValue = 'سبحان الله';
  int incrementCounter = 0;
  void resetCounterWhenChooseNewText(String newText) {
    setState(() {
      selectedValue = newText;
      incrementCounter = 0;
    });
  }

  void incrementMethod() {
    setState(() {
      incrementCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBoxHeight.height25(context: context),
        const AppBarImageAndTextAndDividerComponent(text: 'السبحة'),
        SizedBoxHeight.height25(context: context),
        CustomRemembrancesRosaryCardRosaryView(
          onSelected: resetCounterWhenChooseNewText,
          selectedValue: selectedValue,
        ),
        //now when the user choose new text from menu so the counter will reset
        SizedBoxHeight.height25(context: context),
        CustomCounterRosaryCardRosaryView(
          counter: incrementCounter,
          onIncrement: incrementMethod,
        ),
        //now you take it method to increment value the parameter when the user click on circle, and you give you parameter value because when the user choose new element from menu so should the counter reset
        SizedBoxHeight.heightExpanded,
        const BlackAndWhiteDividerComponent(blackOrWhite: 'black'),
        SizedBoxHeight.height10(context: context),
      ],
    );
  }
}
