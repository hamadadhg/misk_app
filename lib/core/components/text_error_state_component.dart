import 'package:flutter/material.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class TextErrorStateComponent extends StatelessWidget {
  const TextErrorStateComponent({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: StyleToTexts.textStyleBold14(
          context: context,
        ).copyWith(color: StyleToColors.redColor),
      ),
    );
  }
}
