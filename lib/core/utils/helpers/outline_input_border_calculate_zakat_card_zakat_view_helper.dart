import 'package:flutter/material.dart';
import 'package:misk/core/utils/radius/circular.dart';

OutlineInputBorder outlineInputBorderCalculateZakatCardZakatViewHelper({
  required BuildContext context,
}) {
  return OutlineInputBorder(
    borderRadius: Circular.radius12(context: context),
    borderSide: BorderSide.none,
  );
}
