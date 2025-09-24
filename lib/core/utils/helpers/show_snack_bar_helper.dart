import 'package:flutter/material.dart';
import 'package:misk/core/utils/constants/durations_variables_constant.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

void showSnackBarHelper({required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: StyleToColors.deepOliveGreenColor,
      duration: kFiveSeconds,
      behavior: SnackBarBehavior.floating,
      content: Text(
        'يجب الانتظار بعد اول ضغطه لانه يتم تشغيل الصوت',
        style: StyleToTexts.textStyleBold18(
          context: context,
        ).copyWith(color: StyleToColors.whiteColor),
      ),
    ),
  );
}
