/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/lists/quran_surahs_list.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';
import 'package:misk/gen/assets.gen.dart';

class CustomPopupMenuItemQuranView extends StatelessWidget {
  const CustomPopupMenuItemQuranView({super.key, required this.onSelected});
  final void Function(String) onSelected;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Assets.images.bottomBackArrowImage.image(),
      onSelected: onSelected,
      itemBuilder: (context) {
        return quranSurahsList.map((sura) {
          return PopupMenuItem<String>(
            value: sura,
            child: Text(
              sura,
              style: StyleToTexts.textStyleMedium12(
                context: context,
              ).copyWith(color: StyleToColors.blackColor),
            ),
          );
        }).toList();
      },
    );
  }
}
*/
