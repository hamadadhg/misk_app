import 'package:flutter/material.dart';
import 'package:misk/core/utils/padding/padding_with_child/symmetric_padding_with_child.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomWarningQiblaDirectionQiblaView extends StatelessWidget {
  const CustomWarningQiblaDirectionQiblaView({super.key});

  @override
  Widget build(BuildContext context) {
    return SymmetricPaddingWithChild.horizontal10(
      context: context,
      child: Text(
        'يجب عليك جعل التطبيق يحدد موقعك حتى تتمكن من رؤية اتجاه القبلة',
        textAlign: TextAlign.center,
        style: StyleToTexts.textStyleBold16(
          context: context,
        ).copyWith(color: StyleToColors.redColor),
      ),
    );
  }
}
