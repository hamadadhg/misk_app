/*
import 'package:flutter/material.dart';
import 'package:misk/core/utils/constants/strings_variables_constant.dart';
import 'package:misk/core/utils/helpers/push_go_router_helper.dart';
import 'package:misk/core/utils/lists/elements_cards_hadith_view_list.dart';
import 'package:misk/core/components/card_with_title_and_trailing_component.dart';

class CustomGenerateCardsHadithView extends StatelessWidget {
  const CustomGenerateCardsHadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(elementsCardsHadithViewList.length, (index) {
        final item = elementsCardsHadithViewList[index];
        return CardWithTitleAndTrailingComponent(
          text: item,
          onTap: () {
            pushGoRouterHelper(
              context: context,
              view: kDisplayHadithViewRouter,
              extra: item,
            );
          },
        );
      }),
    );
  }
}
*/
