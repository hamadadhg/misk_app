import 'package:flutter/widgets.dart';

abstract class Circular {
  static BorderRadius radius5({required BuildContext context}) {
    double height = MediaQuery.sizeOf(context).height;
    return BorderRadius.circular(height * 0.007);
  }

  static BorderRadius radius8({required BuildContext context}) {
    double height = MediaQuery.sizeOf(context).height;
    return BorderRadius.circular(height * 0.012);
  }

  static BorderRadius radius10({required BuildContext context}) {
    double height = MediaQuery.sizeOf(context).height;
    return BorderRadius.circular(height * 0.014);
  }

  static BorderRadius radius12({required BuildContext context}) {
    double height = MediaQuery.sizeOf(context).height;
    return BorderRadius.circular(height * 0.016);
  }

  static BorderRadius radius15({required BuildContext context}) {
    double height = MediaQuery.sizeOf(context).height;
    return BorderRadius.circular(height * 0.021);
  }

  static BorderRadius radius20({required BuildContext context}) {
    double height = MediaQuery.sizeOf(context).height;
    return BorderRadius.circular(height * 0.028);
  }

  static BorderRadius radius25({required BuildContext context}) {
    double height = MediaQuery.sizeOf(context).height;
    return BorderRadius.circular(height * 0.035);
  }

  static BorderRadius radius30({required BuildContext context}) {
    double height = MediaQuery.sizeOf(context).height;
    return BorderRadius.circular(height * 0.042);
  }
}
