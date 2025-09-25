/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/input_decorations.dart';
import 'package:misk/core/utils/padding/padding_with_child/only_padding_with_child.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class TextFormFieldZakatCardComponent extends StatelessWidget {
  const TextFormFieldZakatCardComponent({
    super.key,
    required this.hintText,
    this.textEditingController,
    required this.textInputType,
  });
  final String hintText;
  final TextEditingController? textEditingController;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return OnlyPaddingWithChild.right5AndLeft20(
      context: context,
      child: TextFormField(
        keyboardType: textInputType,
        controller: textEditingController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'هذا الحقل مطلوب';
          }
          return null;
        },
        textDirection: TextDirection.rtl,
        style: StyleToTexts.textStyleBold14(
          context: context,
        ).copyWith(color: StyleToColors.deeepGreyColor),
        decoration: InputDecorations.inputDecorationZakatCardComponent(
          context: context,
          hintText: hintText,
          isPortrait: isPortrait == false,
        ),
      ),
    );
  }
}
*/
