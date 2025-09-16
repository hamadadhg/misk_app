import 'package:flutter/material.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_sheikh_image_quran_view.dart';

class CustomLeadingListTileQuranView extends StatelessWidget {
  const CustomLeadingListTileQuranView({super.key, required this.image});
  final Image image;
  @override
  Widget build(BuildContext context) {
    return CustomSheikhImageQuranView(
      heightPercent: 0.11,
      widthPercent: 0.17,
      widget: image,
    );
  }
}
