/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/box_decorations.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomCounterRosaryCardRosaryView extends StatelessWidget {
  const CustomCounterRosaryCardRosaryView({
    super.key,
    required this.counter,
    required this.onIncrement,
  });
  final int counter;
  final void Function() onIncrement;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return GestureDetector(
      onTap: onIncrement,
      child: Container(
        width: size.width * 0.66,
        height: size.height * (isPortrait == false ? 0.7 : 0.37),
        alignment: Alignment.center,
        decoration: BoxDecorations.boxDecorationCounterRosaryCardRosaryView(),
        child: Text(
          counter.toString(),
          style: StyleToTexts.textStyleNormal96(context: context),
        ),
      ),
    );
  }
}
*/
