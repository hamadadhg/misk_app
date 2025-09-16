import 'package:flutter/material.dart';
import 'package:misk/core/components/image_and_text_and_generate_texts_component.dart';
import 'package:misk/core/utils/lists/intro_texts_to_the_app_list.dart';
import 'package:misk/gen/assets.gen.dart';

class CustomImageAndTextsOnBoarding1ViewSection extends StatelessWidget {
  const CustomImageAndTextsOnBoarding1ViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageAndTextAndGenerateTextsComponent(
      text: 'مرحبًا بك في تطبيق مسك',
      length: 5,
      image: Assets.images.logoMiskImage.image(),
      textsList: introTextsToTheAppList,
    );
  }
}
