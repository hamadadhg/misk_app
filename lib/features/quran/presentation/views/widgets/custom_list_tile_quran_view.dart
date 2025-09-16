import 'package:flutter/material.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_leading_list_tile_quran_view.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_subtitle_list_tile_quran_view.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_title_list_tile_quran_view.dart';

class CustomListTileQuranView extends StatelessWidget {
  const CustomListTileQuranView({
    super.key,
    required this.image,
    required this.titleText,
    required this.subtitleText,
  });
  final Image image;
  final String titleText, subtitleText;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomLeadingListTileQuranView(image: image),
      title: CustomTitleListTileQuranView(text: titleText),
      subtitle: CustomSubtitleListTileQuranView(text: subtitleText),
    );
  }
}
