import 'package:flutter/widgets.dart';

abstract class SymmetricPaddingWithoutChild {
  static EdgeInsets horizontal15({required BuildContext context}) {
    double width = MediaQuery.sizeOf(context).width;
    return EdgeInsets.symmetric(horizontal: width * 0.037);
  }

  static EdgeInsets horizontal20({required BuildContext context}) {
    double width = MediaQuery.sizeOf(context).width;
    return EdgeInsets.symmetric(horizontal: width * 0.05);
  }

  static EdgeInsets horizontal25({required BuildContext context}) {
    double width = MediaQuery.sizeOf(context).width;
    return EdgeInsets.symmetric(horizontal: width * 0.06);
  }

  static EdgeInsets horizontal30({required BuildContext context}) {
    double width = MediaQuery.sizeOf(context).width;
    return EdgeInsets.symmetric(horizontal: width * 0.074);
  }
}
