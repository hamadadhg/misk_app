/*
import 'package:flutter/material.dart';
import 'package:misk/core/components/calculate_text_button_component.dart';
import 'package:misk/core/components/text_with_align_up_text_form_field_zakat_card_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';

class CustomContainZakatCardSilverView extends StatelessWidget {
  const CustomContainZakatCardSilverView({
    super.key,
    required this.textEditingControllerSilverWeight,
    required this.onPressed,
  });
  final TextEditingController textEditingControllerSilverWeight;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return Column(
      children: [
        TextWithAlignUpTextFormFieldZakatCardComponent(
          text: 'وزن الفضة',
          hintText: 'المبلغ',
          textInputType: TextInputType.phone,
          textEditingController: textEditingControllerSilverWeight,
        ),
        isPortrait == false
            ? SizedBoxHeight.height20(context: context)
            : SizedBoxHeight.height10(context: context),
        CalculateTextButtonComponent(onPressed: onPressed),
      ],
    );
  }
}
*/
