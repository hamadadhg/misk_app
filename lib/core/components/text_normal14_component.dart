import 'package:flutter/material.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class TextNormal14Component extends StatelessWidget {
  const TextNormal14Component({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: StyleToTexts.textStyleNormal14(context: context));
  }
}
