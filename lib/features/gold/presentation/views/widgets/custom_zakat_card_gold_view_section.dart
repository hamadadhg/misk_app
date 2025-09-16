import 'package:flutter/material.dart';
import 'package:misk/core/components/background_zakat_card_component.dart';
import 'package:misk/core/components/calculate_text_button_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/gold/presentation/views/widgets/custom_text_up_dropdown_form_field_gold_view.dart';
import 'package:misk/features/gold/presentation/views/widgets/custom_text_up_text_field_weight_gold_gold_view.dart';

class CustomZakatCardGoldViewSection extends StatelessWidget {
  const CustomZakatCardGoldViewSection({
    super.key,
    required this.textEditingControllerGoldWeight,
    required this.onPressed,
  });
  final TextEditingController textEditingControllerGoldWeight;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return BackgroundZakatCardComponent(
      child: Column(
        children: [
          CustomTextUpTextFieldWeightGoldGoldView(
            textEditingControllerGoldWeight: textEditingControllerGoldWeight,
          ),
          SizedBoxHeight.height10(context: context),
          const CustomTextUpDropdownFormFieldGoldView(),
          SizedBoxHeight.height10(context: context),
          CalculateTextButtonComponent(onPressed: onPressed),
        ],
      ),
    );
  }
}
