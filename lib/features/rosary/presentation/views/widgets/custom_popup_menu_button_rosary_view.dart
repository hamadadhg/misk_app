import 'package:flutter/material.dart';
import 'package:misk/core/utils/lists/elements_of_remembrances_to_rosary_view_list.dart';
import 'package:misk/features/rosary/presentation/views/widgets/custom_text_bold16_rosary_view.dart';
import 'package:misk/gen/assets.gen.dart';

class CustomPopupMenuButtonRosaryView extends StatelessWidget {
  const CustomPopupMenuButtonRosaryView({super.key, required this.onSelected});
  final void Function(String) onSelected;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Assets.images.bottomBackArrowImage.image(),
      onSelected: onSelected,
      itemBuilder: (context) => elementsOfRemembrancesToRosaryViewList.map((
        rosaryRemembrances,
      ) {
        return PopupMenuItem(
          value: rosaryRemembrances,
          child: CustomTextBold16RosaryView(selectedValue: rosaryRemembrances),
        );
      }).toList(),
    );
  }
}
