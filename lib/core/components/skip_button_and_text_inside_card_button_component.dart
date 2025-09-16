import 'package:flutter/material.dart';
import 'package:misk/core/components/skip_text_button_component.dart';
import 'package:misk/core/components/text_inside_card_from_text_button_component.dart';
import 'package:misk/core/utils/padding/padding_with_child/symmetric_padding_with_child.dart';
import 'package:misk/core/utils/sized/sized_box_width.dart';

class SkipButtonAndTextInsideCardButtonComponent extends StatelessWidget {
  const SkipButtonAndTextInsideCardButtonComponent({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SymmetricPaddingWithChild.horizontal15(
      context: context,
      child: Row(
        children: [
          const SkipTextButtonComponent(),
          SizedBoxWidth.widthExpanded,
          TextInsideCardFromTextButtonComponent(
            text: text,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
