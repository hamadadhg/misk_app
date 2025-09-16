import 'package:flutter/material.dart';
import 'package:misk/core/components/left_back_arrow_with_pop_component.dart';
import 'package:misk/core/components/svg_image_component.dart';
import 'package:misk/core/utils/padding/padding_with_child/symmetric_padding_with_child.dart';
import 'package:misk/core/utils/sized/sized_box_width.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_surah_card_quran_view.dart';
import 'package:misk/gen/assets.gen.dart';

class CustomAppBarQuranView extends StatelessWidget {
  const CustomAppBarQuranView({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return SymmetricPaddingWithChild.horizontal15(
      context: context,
      child: Row(
        children: [
          const LeftBackArrowWithPopComponent(),
          SizedBoxWidth.width45(context: context),
          GestureDetector(
            onTap: onTap,
            child: SvgImageComponent(
              image: Assets.images.startPlayImage.path,
              color: StyleToColors.blackColor,
            ),
          ),
          SizedBoxWidth.widthExpanded,
          const CustomSurahCardQuranView(),
        ],
      ),
    );
  }
}
