import 'package:flutter/material.dart';

abstract class OnlyPaddingWithChild {
  static Padding right15({
    required BuildContext context,
    required Widget child,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.only(right: width * 0.037),
      child: child,
    );
  }

  static Padding left15({
    required BuildContext context,
    required Widget child,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.037),
      child: child,
    );
  }

  static Padding left20({
    required BuildContext context,
    required Widget child,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.05),
      child: child,
    );
  }

  static Padding right30({
    required BuildContext context,
    required Widget child,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.only(right: width * 0.074),
      child: child,
    );
  }

  static Padding right5AndLeft20({
    required BuildContext context,
    required Widget child,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.only(right: width * 0.007, left: width * 0.05),
      child: child,
    );
  }

  static Padding left3AndRight20({
    required BuildContext context,
    required Widget child,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.003, right: width * 0.05),
      child: child,
    );
  }
}
