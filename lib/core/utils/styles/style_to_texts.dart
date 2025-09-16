import 'package:flutter/material.dart';
import 'package:misk/core/utils/helpers/responsive_text_helper.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/gen/fonts.gen.dart';

abstract class StyleToTexts {
  static TextStyle textStyleNormal11({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 11, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.notoSansArabic,
      color: StyleToColors.levelOneWhiteColor,
    );
  }

  static TextStyle textStyleNormal12({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 12, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.notoSansArabic,
    );
  }

  static TextStyle textStyleMedium12({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 12, context: context),
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.notoSansArabic,
      color: StyleToColors.whiteColor,
    );
  }

  static TextStyle textStyleSemiBold12({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 12, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.notoSansArabic,
      color: StyleToColors.whiteColor,
    );
  }

  static TextStyle textStyleBold13({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 13, context: context),
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.notoSansArabic,
    );
  }

  static TextStyle textStyleNormal14({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 14, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.notoSansArabic,
    );
  }

  static TextStyle textStyleBold14({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 14, context: context),
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.notoSansArabic,
    );
  }

  static TextStyle textStyleSemiBold14({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 14, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.notoSansArabic,
    );
  }

  static TextStyle textStyleSemiBold16({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 16, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.notoSansArabic,
      color: StyleToColors.whiteColor,
    );
  }

  static TextStyle textStyleBold16({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 16, context: context),
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.notoSansArabic,
      color: StyleToColors.levelThreeWhiteColor,
    );
  }

  static TextStyle textStyleNormal18({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 18, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.notoSansArabic,
    );
  }

  static TextStyle textStyleBold18({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 18, context: context),
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.notoSansArabic,
    );
  }

  static TextStyle textStyleSemiBold18({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 18, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.notoSansArabic,
    );
  }

  static TextStyle textStyleNormal22({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 22, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.notoSansArabic,
    );
  }

  static TextStyle textStyleSemiBold22({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 22, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.notoSansArabic,
    );
  }

  static TextStyle textStyleBold22({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 22, context: context),
      fontWeight: FontWeight.w700,
      fontFamily: FontFamily.notoSansArabic,
    );
  }

  static TextStyle textStyleMedium46({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 46, context: context),
      fontWeight: FontWeight.w500,
      fontFamily: FontFamily.notoSansArabic,
      color: StyleToColors.whiteColor,
    );
  }

  static TextStyle textStyleNormal96({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveTextHelper(fontSize: 96, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.notoSansArabic,
      color: StyleToColors.whiteColor,
    );
  }
}
