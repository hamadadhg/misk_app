import 'package:flutter/material.dart';
import 'package:misk/core/utils/radius/circular.dart';
import 'package:misk/core/utils/radius/only.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';

abstract class BoxDecorations {
  static BoxDecoration boxDecorationToTimeCardHomeView({
    required BuildContext context,
  }) {
    return BoxDecoration(
      color: StyleToColors.deepOliveGreenColor,
      borderRadius: Only.bottomRight15AndBottomLeft15(context: context),
    );
  }

  static BoxDecoration boxDecorationToQuranCardHomeView({
    required BuildContext context,
  }) {
    return BoxDecoration(
      color: StyleToColors.levelFourWhiteColor,
      borderRadius: Circular.radius15(context: context),
    );
  }

  static BoxDecoration boxDecorationToCardMoreIslamicBenefitHomeView({
    required BuildContext context,
  }) {
    return BoxDecoration(
      color: StyleToColors.levelFourWhiteColor,
      borderRadius: Circular.radius15(context: context),
    );
  }

  static BoxDecoration boxDecorationToSurahCardQuranView({
    required BuildContext context,
    required bool isPortrait,
  }) {
    return BoxDecoration(
      borderRadius: isPortrait == false
          ? Circular.radius20(context: context)
          : Circular.radius10(context: context),
      border: Border.all(color: StyleToColors.mediumOliveGreenColor),
    );
  }

  static BoxDecoration boxDecorationToPlayCardQuranView({
    required BuildContext context,
  }) {
    return BoxDecoration(
      borderRadius: Circular.radius20(context: context),
      color: StyleToColors.deepOliveGreenColor,
    );
  }

  static BoxDecoration boxDecorationToShowModalBottomSheetQuranView({
    required BuildContext context,
  }) {
    return BoxDecoration(
      borderRadius: Only.topRight15AndTopLeft15(context: context),
    );
  }

  static BoxDecoration boxDecorationToCircleRemembrancesView({
    required BuildContext context,
  }) {
    return const BoxDecoration(
      color: StyleToColors.oliveGreenColor,
      shape: BoxShape.circle,
    );
  }

  static BoxDecoration boxDecorationCounterRosaryCardRosaryView() {
    return const BoxDecoration(
      color: StyleToColors.oliveGreenColor,
      shape: BoxShape.circle,
    );
  }

  static BoxDecoration boxDecorationToZakatCalculateCard({
    required BuildContext context,
  }) {
    return BoxDecoration(
      color: StyleToColors.whiteColor,
      borderRadius: Circular.radius15(context: context),
    );
  }

  static BoxDecoration boxDecorationCalculateZakatCardZakatView({
    required BuildContext context,
  }) {
    return BoxDecoration(
      color: StyleToColors.greyColor.withAlpha(15),
      border: Border.all(color: StyleToColors.blackColor),
      borderRadius: Circular.radius25(context: context),
    );
  }

  static BoxDecoration boxDecorationPriceCard({required BuildContext context}) {
    return BoxDecoration(
      color: StyleToColors.greyColor.withAlpha(15),
      border: Border.all(color: StyleToColors.blackColor),
      borderRadius: Circular.radius15(context: context),
    );
  }

  static BoxDecoration boxDecorationToGramCardGoldView({
    required BuildContext context,
    required bool isPortrait,
  }) {
    return BoxDecoration(
      color: StyleToColors.littleGreyColor,
      borderRadius: isPortrait
          ? Circular.radius5(context: context)
          : Circular.radius10(context: context),
    );
  }

  static BoxDecoration boxDecorationToDisplayRemembrancesText({
    required BuildContext context,
  }) {
    return BoxDecoration(
      color: StyleToColors.whiteColor,
      borderRadius: Circular.radius15(context: context),
      border: Border.all(color: StyleToColors.oliveGreenColor),
    );
  }
}
