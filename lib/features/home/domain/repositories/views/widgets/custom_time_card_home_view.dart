import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/box_decorations.dart';
import 'package:misk/core/utils/padding/padding_without_child/only_padding_without_child.dart';
import 'package:misk/features/home/domain/repositories/views/widgets/custom_contain_times_card_home_view.dart';

class CustomTimeCardHomeView extends StatelessWidget {
  const CustomTimeCardHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: OnlyPaddingWithoutChild.top20AndBottom30AndLeft15AndRight15(
        context: context,
      ),
      decoration: BoxDecorations.boxDecorationToTimeCardHomeView(
        context: context,
      ),
      child: const CustomContainTimesCardHomeView(),
    );
  }
}
