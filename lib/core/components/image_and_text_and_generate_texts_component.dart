/*
import 'package:flutter/material.dart';
import 'package:misk/core/components/generate_texts_component.dart';
import 'package:misk/core/components/text_semi_bold18_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';

class ImageAndTextAndGenerateTextsComponent extends StatelessWidget {
  const ImageAndTextAndGenerateTextsComponent({
    super.key,
    required this.text,
    required this.length,
    required this.textsList,
    required this.image,
    this.sizedBox,
  });
  final String text;
  final int length;
  final List<String> textsList;
  final Widget image;
  final Widget? sizedBox;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        image,
        sizedBox ?? const SizedBox(),
        TextSemiBold18Component(text: text),
        SizedBoxHeight.height10(context: context),
        GenerateTextsComponent(length: length, textsList: textsList),
      ],
    );
  }
}
*/
