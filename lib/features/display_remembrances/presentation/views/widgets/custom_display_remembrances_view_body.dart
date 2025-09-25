/*
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:misk/core/components/app_bar_image_and_text_and_divider_component.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/utils/lists/elements_of_remembrances_about_evening_remembrances_list.dart';
import 'package:misk/core/utils/lists/elements_of_remembrances_about_morning_remembrances_list.dart';
import 'package:misk/core/utils/lists/elements_of_remembrances_about_mosque_remembrances_list.dart';
import 'package:misk/core/utils/lists/elements_of_remembrances_about_prayer_remembrances_list.dart';
import 'package:misk/core/utils/lists/elements_of_remembrances_about_sleeping_remembrances_list.dart';
import 'package:misk/core/utils/lists/elements_of_remembrances_about_travel_remembrances_list.dart';
import 'package:misk/core/utils/lists/elements_of_remembrances_about_waking_up_supplication_list.dart';
import 'package:misk/core/utils/lists/elements_of_repeat_for_this_evening_remembrances_list.dart';
import 'package:misk/core/utils/lists/elements_of_repeat_for_this_morning_remembrances_list.dart';
import 'package:misk/core/utils/lists/elements_of_repeat_for_this_mosque_remembrances_list.dart';
import 'package:misk/core/utils/lists/elements_of_repeat_for_this_prayer_remembrances_list.dart';
import 'package:misk/core/utils/lists/elements_of_repeat_for_this_sleeping_remembrances_list.dart';
import 'package:misk/core/utils/lists/elements_of_repeat_for_this_travel_remembrances_list.dart';
import 'package:misk/core/utils/lists/elements_of_repeat_for_this_waking_up_supplication_list.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/display_remembrances/presentation/views/widgets/custom_card_texts_remembrances_and_circle_remembrances_view.dart';
import 'package:misk/core/components/choose_option_from_click_on_right_or_left_arrow_component.dart';

class CustomDisplayRemembrancesViewBody extends StatefulWidget {
  const CustomDisplayRemembrancesViewBody({super.key});

  @override
  State<CustomDisplayRemembrancesViewBody> createState() =>
      _CustomDisplayRemembrancesViewBodyState();
}

class _CustomDisplayRemembrancesViewBodyState
    extends State<CustomDisplayRemembrancesViewBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final item = GoRouterState.of(context).extra as String;
    List<String> displayRemembrancesList = [];
    List<String> displayRepeatRemembrancesList = [];
    switch (item) {
      case 'اذكار الصباح':
        displayRemembrancesList =
            elementsOfRemembrancesAboutMorningRemembrancesList;
        displayRepeatRemembrancesList =
            elementsOfRepeatForThisMorningRemembrancesList;
        break;
      case 'اذكار المساء':
        displayRemembrancesList =
            elementsOfRemembrancesAboutEveningRemembrancesList;
        displayRepeatRemembrancesList =
            elementsOfRepeatForThisEveningRemembrancesList;
        break;
      case 'اذكار النوم':
        displayRemembrancesList =
            elementsOfRemembrancesAboutSleepingRemembrancesList;
        displayRepeatRemembrancesList =
            elementsOfRepeatForThisSleepingRemembrancesList;
        break;
      case 'اذكار السفر':
        displayRemembrancesList =
            elementsOfRemembrancesAboutTravelRemembrancesList;
        displayRepeatRemembrancesList =
            elementsOfRepeatForThisTravelRemembrancesList;
        break;
      case 'اذكار المسجد':
        displayRemembrancesList =
            elementsOfRemembrancesAboutMosQueRemembrancesList;
        displayRepeatRemembrancesList =
            elementsOfRepeatForThisMosqueRemembrancesList;
        break;
      case 'اذكار الاستيقاظ':
        displayRemembrancesList =
            elementsOfRemembrancesAboutWakingUpSupplicationList;
        displayRepeatRemembrancesList =
            elementsOfRepeatForThisWakingUpSupplicationList;
        break;
      case 'اذكار الصلاه':
        displayRemembrancesList =
            elementsOfRemembrancesAboutPrayerRemembrancesList;
        displayRepeatRemembrancesList =
            elementsOfRepeatForThisPrayerRemembrancesList;
        break;
      default:
        displayRemembrancesList = [];
        displayRepeatRemembrancesList = [];
    }
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SizedBoxHeight.height25(context: context),
              AppBarImageAndTextAndDividerComponent(text: item),
              SizedBoxHeight.height25(context: context),
              ChooseOptionFromClickOnRightOrLeftArrowComponent(
                currentIndex: currentIndex,
                totalLength: displayRemembrancesList.length,
                onNext: () {
                  if (currentIndex < displayRemembrancesList.length - 1) {
                    //while currentIndex smaller than displayRemembrancesList, example(1, 2, 3,..,9 < 10), length - 1 because index work from 0 to 9
                    setState(() => currentIndex++);
                  }
                },
                onBack: () {
                  if (currentIndex > 0) {
                    //while currentIndex not negative so minus
                    setState(() => currentIndex--);
                  }
                },
              ),
              SizedBoxHeight.height25(context: context),
              CustomCardTextsRemembrancesAndCircleRemembrancesView(
                displayRemembrancesList: displayRemembrancesList,
                currentIndex: currentIndex,
                displayRepeatRemembrancesList: displayRepeatRemembrancesList,
              ),
              SizedBoxHeight.heightExpanded,
              const BlackAndWhiteDividerComponent(blackOrWhite: 'black'),
              SizedBoxHeight.height10(context: context),
            ],
          ),
        ),
      ],
    );
  }
}
*/
