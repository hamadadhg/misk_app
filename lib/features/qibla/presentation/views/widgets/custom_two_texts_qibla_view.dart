import 'package:flutter/material.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';
import 'package:misk/features/qibla/presentation/views/widgets/custom_text_normal18_qibla_view.dart';

class CustomTwoTextsQiblaView extends StatelessWidget {
  const CustomTwoTextsQiblaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextNormal18QiblaView(text: 'اتجاه القبلة في'),
        SizedBoxHeight.height5(context: context),
        Text('جدة', style: StyleToTexts.textStyleBold18(context: context)),
      ],
    );
  }
}
