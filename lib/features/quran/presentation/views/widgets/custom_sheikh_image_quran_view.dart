/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/radius/circular.dart';

class CustomSheikhImageQuranView extends StatelessWidget {
  const CustomSheikhImageQuranView({
    super.key,
    required this.heightPercent,
    required this.widthPercent,
    required this.widget,
  });
  final double heightPercent, widthPercent;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return SizedBox(
      height: size.height * heightPercent,
      width: size.width * widthPercent,
      child: ClipRRect(
        borderRadius: isPortrait == false
            ? Circular.radius25(context: context)
            : Circular.radius15(context: context),
        child: widget,
      ),
    );
  }
}
*/
