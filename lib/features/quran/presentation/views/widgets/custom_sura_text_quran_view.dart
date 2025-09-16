import 'package:flutter/material.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomSuraTextQuranView extends StatelessWidget {
  const CustomSuraTextQuranView({super.key, required this.selectedValue});
  final String selectedValue;
  @override
  Widget build(BuildContext context) {
    return Text(
      selectedValue,
      style: StyleToTexts.textStyleMedium12(
        context: context,
      ).copyWith(color: StyleToColors.blackColor),
    );
  }
}
