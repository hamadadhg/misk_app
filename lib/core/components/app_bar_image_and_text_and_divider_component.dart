/*
import 'package:flutter/material.dart';
import 'package:misk/core/components/left_back_arrow_with_pop_component.dart';
import 'package:misk/core/components/olive_green_divider_component.dart';
import 'package:misk/core/components/text_semi_bold22_component.dart';
import 'package:misk/core/utils/padding/padding_with_child/only_padding_with_child.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/core/utils/sized/sized_box_width.dart';

class AppBarImageAndTextAndDividerComponent extends StatelessWidget {
  const AppBarImageAndTextAndDividerComponent({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnlyPaddingWithChild.left15(
          context: context,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LeftBackArrowWithPopComponent(),
              SizedBoxWidth.widthExpanded,
              TextSemiBold22Component(text: text),
              SizedBoxWidth.widthExpanded,
            ],
          ),
        ),
        SizedBoxHeight.height5(context: context),
        const OliveGreenDividerComponent(),
      ],
    );
  }
}
*/
