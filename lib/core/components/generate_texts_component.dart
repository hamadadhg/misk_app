import 'package:flutter/material.dart';
import 'package:misk/core/components/text_normal14_component.dart';

class GenerateTextsComponent extends StatelessWidget {
  const GenerateTextsComponent({
    super.key,
    required this.length,
    required this.textsList,
  });
  final int length;
  final List<String> textsList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(length, (index) {
        final item = textsList[index];
        return TextNormal14Component(text: item);
      }),
    );
  }
}
