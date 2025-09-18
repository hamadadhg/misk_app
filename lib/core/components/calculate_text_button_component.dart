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
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return SizedBox(
      height: size.height * (isPortrait == false ? 0.1 : 0.056),
      width: size.width * 0.3,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: StyleToColors.oliveGreenColor,
          shape: RoundedRectangleBorder(
            borderRadius: isPortrait == false
                ? Circular.radius15(context: context)
                : Circular.radius8(context: context),
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
