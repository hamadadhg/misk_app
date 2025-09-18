import 'package:flutter/material.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/features/rosary/presentation/views/widgets/custom_contain_remembrances_rosary_card_rosary_view.dart';

class CustomRemembrancesRosaryCardRosaryView extends StatelessWidget {
  const CustomRemembrancesRosaryCardRosaryView({
    super.key,
    required this.selectedValue,
    required this.onSelected,
  });
  final String selectedValue;
  final void Function(String) onSelected;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return SizedBox(
      width: size.width * 0.62,
      height: size.height * (isPortrait == false ? 0.12 : 0.07),
      child: Card(
        color: StyleToColors.whiteColor,
        child: CustomContainRemembrancesRosaryCardRosaryView(
          selectedValue: selectedValue,
          onSelected: onSelected,
        ),
      ),
    );
  }
}
