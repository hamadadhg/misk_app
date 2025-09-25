/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/input_decorations.dart';
import 'package:misk/core/utils/padding/padding_with_child/only_padding_with_child.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomWeightGoldZakatCardGoldView extends StatelessWidget {
  const CustomWeightGoldZakatCardGoldView({
    super.key,
    required this.textEditingController,
  });
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return OnlyPaddingWithChild.right5AndLeft20(
      context: context,
      child: TextFormField(
        controller: textEditingController,
        keyboardType: TextInputType.phone,
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
        decoration: InputDecorations.inputDecorationWeightGoldZakatCardGoldView(
          context: context,
          isPortrait: isPortrait,
        ),
      ),
    );
  }
}
*/
