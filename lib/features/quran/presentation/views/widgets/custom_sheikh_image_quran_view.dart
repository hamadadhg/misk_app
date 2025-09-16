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
    return SizedBox(
      height: size.height * heightPercent,
      width: size.width * widthPercent,
      child: ClipRRect(
        borderRadius: Circular.radius15(context: context),
        child: widget,
      ),
    );
  }
}
