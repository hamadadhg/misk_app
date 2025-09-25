/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/radius/circular.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class TextInsideCardFromTextButtonComponent extends StatelessWidget {
  const TextInsideCardFromTextButtonComponent({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width * 0.26,
      height: size.height * 0.063,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: StyleToColors.deepOliveGreenColor,
          shape: RoundedRectangleBorder(
            borderRadius: Circular.radius10(context: context),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: StyleToTexts.textStyleNormal12(
            context: context,
          ).copyWith(color: StyleToColors.whiteColor),
        ),
      ),
    );
  }
}
*/
