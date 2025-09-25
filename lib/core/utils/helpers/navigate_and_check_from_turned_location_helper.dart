/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/constants/strings_variables_constant.dart';
import 'package:misk/core/utils/helpers/delayed_and_go_router_helper.dart';
import 'package:misk/core/utils/shared/app_shared_preferences.dart';

Future<void> navigateAndCheckFromTurnLocationHelper({
  required BuildContext context,
}) async {
  final turnedOn = await AppSharedPreferences.checkIfLocationTurnOnMethod();
  final targetView = turnedOn ? kHomeViewRouter : kOneBoarding1ViewRouter;
  delayedAndGoRouterHelper(context: context, view: targetView);
}
*/
