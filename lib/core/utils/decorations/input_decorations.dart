import 'package:flutter/material.dart';
import 'package:misk/core/utils/helpers/outline_input_border_calculate_zakat_card_zakat_view_helper.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';
import 'package:misk/features/gold/presentation/views/widgets/custom_gram_card_gold_view.dart';
import 'package:misk/features/gold/presentation/views/widgets/custom_prefix_form_field_gold_view.dart';

abstract class InputDecorations {
  static InputDecoration inputDecorationZakatCardComponent({
    required BuildContext context,
    required String hintText,
    required bool isPortrait,
  }) {
    return InputDecoration(
      fillColor: StyleToColors.whiteColor,
      hintTextDirection: TextDirection.rtl,
      filled: true,
      border: outlineInputBorderCalculateZakatCardZakatViewHelper(
        context: context,
        isPortrait: isPortrait,
      ),
      prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
      //prefixIconConstraints: to control on size the prefixIcon(any widget in prefix place), because i want to give GramCard fixed size(height and width less that 48 height and 48 width)
      //because bydefault prefixIcon give the widget default size(48 to height and 48 to width), so now i use prefixIconConstraints to cancel this any default height and width in prefixIcon, and i will give height and width on my mind
      hintText: hintText,
      hintStyle: StyleToTexts.textStyleNormal14(
        context: context,
      ).copyWith(color: StyleToColors.deeepGreyColor),
    );
  }

  static InputDecoration inputDecorationWeightGoldZakatCardGoldView({
    required BuildContext context,
    required bool isPortrait,
  }) {
    return InputDecoration(
      fillColor: StyleToColors.whiteColor,
      hintTextDirection: TextDirection.rtl,
      filled: true,
      border: outlineInputBorderCalculateZakatCardZakatViewHelper(
        context: context,
        isPortrait: isPortrait,
      ),
      prefixIcon: const CustomGramCardGoldView(),
      prefixIconConstraints: const BoxConstraints(minHeight: 0, minWidth: 0),
      //prefixIconConstraints: to control on size the prefixIcon(any widget in prefix place), because i want to give GramCard fixed size(height and width less that 48 height and 48 width)
      //because bydefault prefixIcon give the widget default size(48 to height and 48 to width), so now i use prefixIconConstraints to cancel this any default height and width in prefixIcon, and i will give height and width on my mind
      hintText: 'المبلغ',
      hintStyle: StyleToTexts.textStyleNormal14(
        context: context,
      ).copyWith(color: StyleToColors.deeepGreyColor),
    );
  }

  static InputDecoration inputDecorationDropdownFormFieldGoldView({
    required BuildContext context,
    required String text,
    required bool isPortrait,
  }) {
    return InputDecoration(
      prefix: CustomPrefixFormFieldGoldView(text: text),
      fillColor: StyleToColors.whiteColor,
      filled: true,
      border: outlineInputBorderCalculateZakatCardZakatViewHelper(
        context: context,
        isPortrait: isPortrait,
      ),
    );
  }
}
