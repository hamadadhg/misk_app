import 'package:flutter/material.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';
import 'package:misk/gen/assets.gen.dart';

class CustomContainCoinCardZakatView extends StatelessWidget {
  const CustomContainCoinCardZakatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        leading: Assets.images.coinsImage.image(),
        title: Text(
          'الصناديق الاستثمارية',
          style: StyleToTexts.textStyleNormal18(context: context),
        ),
      ),
    );
  }
}
