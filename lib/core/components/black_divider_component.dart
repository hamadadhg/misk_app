/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/radius/circular.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';

class BlackAndWhiteDividerComponent extends StatelessWidget {
  const BlackAndWhiteDividerComponent({super.key, required this.blackOrWhite});
  final String blackOrWhite;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Divider(
      color: blackOrWhite == 'black'
          ? StyleToColors.blackColor
          : StyleToColors.whiteColor,
      endIndent: width * 0.3,
      indent: width * 0.3,
      thickness: 5,
      radius: Circular.radius30(context: context),
    );
  }
}
*/
