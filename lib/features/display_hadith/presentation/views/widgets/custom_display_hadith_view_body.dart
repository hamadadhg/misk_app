import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:misk/core/utils/lists/elements_of_hadith_about_friday_list.dart';
import 'package:misk/core/utils/lists/elements_of_hadith_about_morals_list.dart';
import 'package:misk/core/utils/lists/elements_of_hadith_about_patience_list.dart';
import 'package:misk/core/utils/lists/elements_of_hadith_about_the_merit_of_work_list.dart';
import 'package:misk/core/utils/lists/elements_of_hadith_about_world_list.dart';
import 'package:misk/core/utils/lists/elements_of_hadith_the_bliss_of_heaven_list.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/core/components/app_bar_and_text_type_display_view_section_component.dart';
import 'package:misk/core/components/card_inside_it_image_and_choose_and_divider_display_view_component.dart';
import 'package:misk/features/display_hadith/presentation/views/widgets/custom_full_texts_inside_card_display_hadith_view.dart';

class CustomDisplayHadithViewBody extends StatefulWidget {
  const CustomDisplayHadithViewBody({super.key});

  @override
  State<CustomDisplayHadithViewBody> createState() =>
      _CustomDisplayHadithViewBodyState();
}

class _CustomDisplayHadithViewBodyState
    extends State<CustomDisplayHadithViewBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final item = GoRouterState.of(context).extra as String;
    List<Map<String, dynamic>> displayHadithsList = [];
    switch (item) {
      case 'عن نعيم الجنه':
        displayHadithsList = elementsOfHadithTheBlissOfHeavenList;
        break;
      case 'عن الاخلاق':
        displayHadithsList = elementsOfHadithAboutMoralsList;
        break;
      case 'عن الصبر':
        displayHadithsList = elementsOfHadithAboutPatienceList;
        break;
      case 'عن الدنيا':
        displayHadithsList = elementsOfHadithAboutWorldList;
        break;
      case 'عن يوم الجمعة':
        displayHadithsList = elementsOfHadithAboutFridayList;
        break;
      case 'عن فضل العمل':
        displayHadithsList = elementsOfHadithAboutTheMeritOfWorkList;
        break;
      default:
        displayHadithsList = [];
    }
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SizedBoxHeight.height25(context: context),
              AppBarAndTextTypeDisplayViewSectionComponent(
                textTypeDisplayView: item,
                textAppBar: 'الحديث النبوي',
              ),
              SizedBoxHeight.height25(context: context),
              Expanded(
                child: CardInsideItImageAndChooseAndDividerDisplayViewComponent(
                  currentIndex: currentIndex,
                  totalLength: displayHadithsList.length,
                  onNext: () {
                    if (currentIndex < displayHadithsList.length - 1) {
                      setState(() => currentIndex++);
                    }
                  },
                  onBack: () {
                    if (currentIndex > 0) {
                      setState(() => currentIndex--);
                    }
                  },
                  child: CustomFullTextsInsideCardDisplayHadithView(
                    displayHadithsList: displayHadithsList,
                    currentIndex: currentIndex,
                  ),
                ),
              ),
              SizedBoxHeight.height10(context: context),
            ],
          ),
        ),
      ],
    );
  }
}
