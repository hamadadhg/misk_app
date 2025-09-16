import 'package:flutter/material.dart';
import 'package:misk/core/components/text_with_align_up_field_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/gold/presentation/views/widgets/custom_dropdown_button_form_field_gold_view.dart';

class CustomTextUpDropdownFormFieldGoldView extends StatelessWidget {
  const CustomTextUpDropdownFormFieldGoldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextWithAlignUpFieldComponent(text: 'العيار'),
        SizedBoxHeight.height5(context: context),
        const CustomDropdownButtonFormFieldGoldView(),
      ],
    );
  }
}
