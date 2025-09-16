import 'package:flutter/material.dart';
import 'package:misk/core/utils/decorations/box_decorations.dart';
import 'package:misk/core/utils/padding/padding_without_child/only_padding_without_child.dart';
import 'package:misk/features/home/domain/repositories/views/widgets/custom_contain_card_more_islamic_benefit_home_view.dart';

class CustomCardMoreIslamicBenefitHomeView extends StatelessWidget {
  const CustomCardMoreIslamicBenefitHomeView({
    super.key,
    required this.image,
    required this.text,
  });
  final Image image;
  final String text;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.14,
      padding: OnlyPaddingWithoutChild.left10AndRight10(context: context),
      decoration: BoxDecorations.boxDecorationToCardMoreIslamicBenefitHomeView(
        context: context,
      ),
      child: CustomContainCardMoreIslamicBenefitHomeView(
        image: image,
        text: text,
      ),
    );
  }
}
