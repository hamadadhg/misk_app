import 'package:flutter/material.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomTitleListTileQuranView extends StatelessWidget {
  const CustomTitleListTileQuranView({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: StyleToTexts.textStyleBold16(context: context));
  }
}
