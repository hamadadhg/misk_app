import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/box_decorations.dart';
import 'package:misk/core/utils/padding/padding_without_child/symmetric_padding_without_child.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_contain_play_card_quran_view.dart';

class CustomPlayCardQuranView extends StatelessWidget {
  const CustomPlayCardQuranView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return Container(
      height: isPortrait == false ? height * 0.125 : height * 0.084,
      margin: SymmetricPaddingWithoutChild.horizontal25(context: context),
      decoration: BoxDecorations.boxDecorationToPlayCardQuranView(
        context: context,
      ),
      child: const CustomContainPlayCardQuranView(),
    );
  }
}
