import 'package:flutter/material.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/on_boarding1/presentation/views/widgets/custom_buttons_and_divider_on_boarding1_view_section.dart';
import 'package:misk/features/on_boarding1/presentation/views/widgets/custom_image_and_texts_on_boarding1_view_section.dart';

class CustomOnBoarding1ViewBody extends StatelessWidget {
  const CustomOnBoarding1ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBoxHeight.heightExpanded,
        const CustomImageAndTextsOnBoarding1ViewSection(),
        SizedBoxHeight.heightExpanded,
        const CustomButtonsAndDividerOnBoarding1ViewSection(),
        SizedBoxHeight.height10(context: context),
      ],
    );
  }
}
