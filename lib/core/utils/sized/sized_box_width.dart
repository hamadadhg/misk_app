import 'package:flutter/widgets.dart';

abstract class SizedBoxWidth {
  static const Expanded widthExpanded = Expanded(child: SizedBox());
  static SizedBox width10({required BuildContext context}) {
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(width: width * 0.015);
  }

  static SizedBox width15({required BuildContext context}) {
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(width: width * 0.037);
  }

  static SizedBox width20({required BuildContext context}) {
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(width: width * 0.05);
  }

  static SizedBox width40({required BuildContext context}) {
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(width: width * 0.09);
  }

  static SizedBox width45({required BuildContext context}) {
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(width: width * 0.11);
  }

  static SizedBox width90({required BuildContext context}) {
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(width: width * 0.22);
  }
}
