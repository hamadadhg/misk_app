import 'package:flutter/material.dart';
import 'package:misk/core/components/olive_green_divider_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_app_bar_quran_view.dart';

class CustomSliverToBoxAdapterQuranView extends StatelessWidget {
  const CustomSliverToBoxAdapterQuranView({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBoxHeight.height15(context: context),
          CustomAppBarQuranView(onTap: onPressed),
          SizedBoxHeight.height10(context: context),
          const OliveGreenDividerComponent(),
          SizedBoxHeight.height15(context: context),
        ],
      ),
    );
  }
}
