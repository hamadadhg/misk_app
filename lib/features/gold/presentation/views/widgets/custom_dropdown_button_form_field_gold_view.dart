/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/input_decorations.dart';
import 'package:misk/core/utils/helpers/dropdown_menu_item_gold_view_helper.dart';
import 'package:misk/core/utils/padding/padding_with_child/only_padding_with_child.dart';
import 'package:misk/core/utils/shared/app_shared_preferences.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomDropdownButtonFormFieldGoldView extends StatefulWidget {
  const CustomDropdownButtonFormFieldGoldView({super.key});

  @override
  State<CustomDropdownButtonFormFieldGoldView> createState() =>
      _CustomDropdownButtonFormFieldGoldViewState();
}

class _CustomDropdownButtonFormFieldGoldViewState
    extends State<CustomDropdownButtonFormFieldGoldView> {
  String selectedValue = '٢٤';
  @override
  Widget build(BuildContext context) {
    return OnlyPaddingWithChild.left20(
      context: context,
      child: DropdownButtonFormField<String>(
        style: StyleToTexts.textStyleNormal14(
          context: context,
        ).copyWith(color: StyleToColors.deeepGreyColor),
        decoration: InputDecorations.inputDecorationDropdownFormFieldGoldView(
          context: context,
          isPortrait: false,
          text: selectedValue,
        ),
        icon: SizedBoxHeight.heightShrink,
        //to don't appear default bottom arrow
        initialValue: selectedValue,
        items: dropdownMenuItemGoldViewHelper(context: context),
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
            AppSharedPreferences.saveCaratGold(karatGold: selectedValue);
          });
        },
      ),
    );
  }
}
*/
