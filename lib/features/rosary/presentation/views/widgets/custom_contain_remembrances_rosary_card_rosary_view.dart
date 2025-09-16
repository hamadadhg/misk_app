import 'package:flutter/material.dart';
import 'package:misk/core/utils/sized/sized_box_width.dart';
import 'package:misk/features/rosary/presentation/views/widgets/custom_popup_menu_button_rosary_view.dart';
import 'package:misk/features/rosary/presentation/views/widgets/custom_text_bold16_rosary_view.dart';

class CustomContainRemembrancesRosaryCardRosaryView extends StatelessWidget {
  const CustomContainRemembrancesRosaryCardRosaryView({
    super.key,
    required this.selectedValue,
    required this.onSelected,
  });
  final String selectedValue;
  final void Function(String) onSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomPopupMenuButtonRosaryView(onSelected: onSelected),
        SizedBoxWidth.widthExpanded,
        CustomTextBold16RosaryView(selectedValue: selectedValue),
        SizedBoxWidth.widthExpanded,
      ],
    );
  }
}
