import 'package:flutter/material.dart';
import 'package:misk/core/components/calculate_text_button_component.dart';
import 'package:misk/core/components/text_with_align_up_text_form_field_zakat_card_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';

class CustomContainCalculateZakatCardMoneyView extends StatelessWidget {
  const CustomContainCalculateZakatCardMoneyView({
    super.key,
    required this.onPressed,
    required this.textEditingController,
  });
  final void Function() onPressed;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWithAlignUpTextFormFieldZakatCardComponent(
          text: 'المبلغ',
          hintText: 'المبلغ',
          textInputType: TextInputType.phone,
          textEditingController: textEditingController,
        ),
        SizedBoxHeight.height10(context: context),
        CalculateTextButtonComponent(onPressed: onPressed),
      ],
    );
  }
}
