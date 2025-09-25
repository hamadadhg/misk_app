/*
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
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBoxWidth.width90(context: context),
        const CustomThreeImagesInPlayCardQuranView(),
        SizedBoxWidth.width40(context: context),
        CustomSheikhImageQuranView(
          heightPercent: isPortrait == false ? 0.11 : 0.07,
          widthPercent: isPortrait == false ? 0.11 : 0.134,
          widget: Assets.images.sheikhMasharyImage.image(fit: BoxFit.fill),
        ),
      ],
    );
  }
}
*/
