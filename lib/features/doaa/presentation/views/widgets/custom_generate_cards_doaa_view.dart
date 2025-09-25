/*
import 'package:flutter/material.dart';
import 'package:misk/core/components/card_with_title_and_trailing_component.dart';
import 'package:misk/core/utils/constants/strings_variables_constant.dart';
import 'package:misk/core/utils/helpers/push_go_router_helper.dart';
import 'package:misk/core/utils/lists/elements_doaa_list.dart';

class CustomGenerateCardsDoaaView extends StatelessWidget {
  const CustomGenerateCardsDoaaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(elementsDoaaList.length, (index) {
        final item = elementsDoaaList[index];
        return CardWithTitleAndTrailingComponent(
          text: item,
          onTap: () {
            pushGoRouterHelper(
              context: context,
              view: kDisplayDoaaViewRouter,
              extra: item,
            );
          },
        );
      }),
    );
  }
}
*/
