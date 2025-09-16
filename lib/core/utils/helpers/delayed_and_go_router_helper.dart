import 'package:flutter/material.dart';
import 'package:misk/core/utils/constants/durations_variables_constant.dart';
import 'package:misk/core/utils/helpers/go_go_router_helper.dart';

Future delayedAndGoRouterHelper({
  required BuildContext context,
  required String view,
}) {
  return Future.delayed(kThreeSeconds, () {
    goGoRouterHelper(context: context, view: view);
  });
}
