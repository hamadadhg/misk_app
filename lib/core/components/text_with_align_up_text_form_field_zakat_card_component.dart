/*
import 'package:flutter/material.dart';
import 'package:misk/core/components/text_form_field_zakat_card_component.dart';
import 'package:misk/core/components/text_with_align_up_field_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';

class TextWithAlignUpTextFormFieldZakatCardComponent extends StatelessWidget {
  const TextWithAlignUpTextFormFieldZakatCardComponent({
    super.key,
    required this.text,
    required this.hintText,
    this.textEditingController,
    required this.textInputType,
  });
  final String text, hintText;
  final TextEditingController? textEditingController;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWithAlignUpFieldComponent(text: text),
        SizedBoxHeight.height5(context: context),
        TextFormFieldZakatCardComponent(
          hintText: hintText,
          textEditingController: textEditingController,
          textInputType: textInputType,
        ),
      ],
    );
  }
}
*/
