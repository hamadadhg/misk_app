import 'package:flutter/material.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class TextSemiBold18Component extends StatelessWidget {
  const TextSemiBold18Component({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: StyleToTexts.textStyleSemiBold18(context: context),
    );
  }
}
