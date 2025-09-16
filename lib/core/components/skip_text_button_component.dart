import 'package:flutter/material.dart';
import 'package:misk/core/utils/constants/strings_variables_constant.dart';
import 'package:misk/core/utils/helpers/go_go_router_helper.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class SkipTextButtonComponent extends StatelessWidget {
  const SkipTextButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        goGoRouterHelper(context: context, view: kHomeViewRouter);
      },
      child: Text(
        'تخطي',
        style: StyleToTexts.textStyleNormal12(
          context: context,
        ).copyWith(color: StyleToColors.blackColor),
      ),
    );
  }
}
