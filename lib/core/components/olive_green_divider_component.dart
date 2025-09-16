import 'package:flutter/material.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';

class OliveGreenDividerComponent extends StatelessWidget {
  const OliveGreenDividerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(color: StyleToColors.oliveGreenColor, thickness: 2);
  }
}
