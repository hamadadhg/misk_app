/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/box_decorations.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_contain_surah_card_quran_view.dart';

class CustomSurahCardQuranView extends StatelessWidget {
  const CustomSurahCardQuranView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return Container(
      height: isPortrait == false ? size.height * 0.098 : size.height * 0.049,
      width: size.width * 0.33,
      decoration: BoxDecorations.boxDecorationToSurahCardQuranView(
        context: context,
        isPortrait: isPortrait,
      ),
      child: const CustomContainSurahCardQuranView(),
    );
  }
}
*/
