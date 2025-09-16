import 'package:flutter/material.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomContainCardZakatView extends StatelessWidget {
  const CustomContainCardZakatView({
    super.key,
    required this.image,
    required this.text,
  });
  final Image image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image,
        Text(text, style: StyleToTexts.textStyleBold14(context: context)),
      ],
    );
  }
}
