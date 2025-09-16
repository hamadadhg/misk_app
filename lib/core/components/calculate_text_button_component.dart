import 'package:flutter/material.dart';
import 'package:misk/core/utils/radius/circular.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CalculateTextButtonComponent extends StatelessWidget {
  const CalculateTextButtonComponent({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.056,
      width: size.width * 0.3,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: StyleToColors.oliveGreenColor,
          shape: RoundedRectangleBorder(
            borderRadius: Circular.radius8(context: context),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          'احسب',
          style: StyleToTexts.textStyleNormal18(
            context: context,
          ).copyWith(color: StyleToColors.whiteColor),
        ),
      ),
    );
  }
}
