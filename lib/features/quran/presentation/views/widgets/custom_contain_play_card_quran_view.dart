import 'package:flutter/material.dart';
import 'package:misk/core/utils/sized/sized_box_width.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_sheikh_image_quran_view.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_three_images_in_play_card_quran_view.dart';
import 'package:misk/gen/assets.gen.dart';

class CustomContainPlayCardQuranView extends StatefulWidget {
  const CustomContainPlayCardQuranView({super.key});

  @override
  State<CustomContainPlayCardQuranView> createState() =>
      _CustomContainPlayCardQuranViewState();
}

class _CustomContainPlayCardQuranViewState
    extends State<CustomContainPlayCardQuranView> {
  Image selectedSheikhImage = Assets.images.sheikhMasharyImage.image(
    fit: BoxFit.fill,
  ); //default image on play card
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBoxWidth.width90(context: context),
        const CustomThreeImagesInPlayCardQuranView(),
        SizedBoxWidth.width40(context: context),
        CustomSheikhImageQuranView(
          heightPercent: 0.07,
          widthPercent: 0.134,
          widget: Assets.images.sheikhMasharyImage.image(),
        ),
      ],
    );
  }
}
