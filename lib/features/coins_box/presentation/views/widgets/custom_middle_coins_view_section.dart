import 'package:flutter/material.dart';
import 'package:misk/core/components/background_zakat_card_component.dart';
import 'package:misk/core/components/calculate_text_button_component.dart';
import 'package:misk/core/components/text_with_align_up_text_form_field_zakat_card_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';

class CustomMiddleCoinsViewSection extends StatelessWidget {
  const CustomMiddleCoinsViewSection({
    super.key,
    required this.textEditingControllerArrowNumbers,
    required this.textEditingControllerArrowValues,
    required this.onPressed,
  });
  final TextEditingController textEditingControllerArrowNumbers,
      textEditingControllerArrowValues;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return BackgroundZakatCardComponent(
      child: Column(
        children: [
          const TextWithAlignUpTextFormFieldZakatCardComponent(
            text: 'الاسم المختصر للصندوق',
            hintText: 'الاسم المختصر للصندوق',
            textInputType: TextInputType.visiblePassword,
          ),
          SizedBoxHeight.height10(context: context),
          TextWithAlignUpTextFormFieldZakatCardComponent(
            text: 'عدد الأسهم',
            hintText: 'عدد الأسهم',
            textInputType: TextInputType.phone,
            textEditingController: textEditingControllerArrowNumbers,
          ),
          SizedBoxHeight.height10(context: context),
          TextWithAlignUpTextFormFieldZakatCardComponent(
            text: 'قيمة السهم',
            hintText: 'قيمة السهم',
            textInputType: TextInputType.phone,
            textEditingController: textEditingControllerArrowValues,
          ),
          SizedBoxHeight.height10(context: context),
          CalculateTextButtonComponent(onPressed: onPressed),
        ],
      ),
    );
  }
}
