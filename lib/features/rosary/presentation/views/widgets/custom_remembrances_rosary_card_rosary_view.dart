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
    return SizedBox(
      width: size.width * 0.62,
      height: size.height * 0.07,
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
