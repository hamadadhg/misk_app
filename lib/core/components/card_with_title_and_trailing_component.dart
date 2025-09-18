import 'package:flutter/material.dart';
import 'package:misk/core/utils/padding/padding_without_child/only_padding_without_child.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/components/contain_card_with_title_and_trailing_component.dart';

class CardWithTitleAndTrailingComponent extends StatelessWidget {
  const CardWithTitleAndTrailingComponent({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return SizedBox(
      height: height * (isPortrait == false ? 0.14 : 0.077),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          color: StyleToColors.whiteColor,
          elevation: 0,
          margin: OnlyPaddingWithoutChild.bottom10AndLeft30AndRight15(
            context: context,
          ),
          child: ContainCardWithTitleAndTrailingComponent(text: text),
        ),
      ),
    );
  }
}
