import 'package:flutter/material.dart';

abstract class SymmetricPaddingWithChild {
  static Padding vertical8({
    required BuildContext context,
    required Widget child,
  }) {
    double height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.012),
      child: child,
    );
  }

  static Padding horizontal10({
    required BuildContext context,
    required Widget child,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.015),
      child: child,
    );
  }

  static Padding horizontal15({
    required BuildContext context,
    required Widget child,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.037),
      child: child,
    );
  }

  static Padding horizontal20({
    required BuildContext context,
    required Widget child,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: child,
    );
  }

  static Padding horizontal30({
    required BuildContext context,
    required Widget child,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.074),
      child: child,
    );
  }

  static SliverPadding sliverHorizontal30({
    required BuildContext context,
    required Widget sliver,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.074),
      sliver: sliver,
    );
  }
}
