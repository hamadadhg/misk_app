import 'package:flutter/material.dart';
import 'package:misk/core/utils/padding/padding_without_child/symmetric_padding_without_child.dart';
import 'package:misk/core/utils/radius/circular.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';

class CardInsideItImageComponent extends StatelessWidget {
  const CardInsideItImageComponent({super.key, required this.image});
  final Image image;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height * 0.476,
      child: Card(
        margin: SymmetricPaddingWithoutChild.horizontal20(context: context),
        color: StyleToColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: Circular.radius15(context: context),
          side: const BorderSide(color: StyleToColors.oliveGreenColor),
        ),
        child: image,
      ),
    );
  }
}
