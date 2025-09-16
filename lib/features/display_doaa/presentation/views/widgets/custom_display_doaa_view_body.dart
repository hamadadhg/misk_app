import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:misk/core/components/app_bar_and_text_type_display_view_section_component.dart';
import 'package:misk/core/components/card_inside_it_image_and_choose_and_divider_display_view_component.dart';
import 'package:misk/core/utils/lists/elements_of_doaa_about_livelihood_list.dart';
import 'package:misk/core/utils/lists/elements_of_doaa_about_making_it_easier_list.dart';
import 'package:misk/core/utils/lists/elements_of_doaa_about_marriage_proposal_list.dart';
import 'package:misk/core/utils/lists/elements_of_doaa_about_not_forgetting_list.dart';
import 'package:misk/core/utils/lists/elements_of_doaa_about_repentance_list.dart';
import 'package:misk/core/utils/lists/elements_of_doaa_about_veil_list.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/core/utils/styles/style_to_texts.dart';

class CustomDisplayDoaaViewBody extends StatefulWidget {
  const CustomDisplayDoaaViewBody({super.key});

  @override
  State<CustomDisplayDoaaViewBody> createState() =>
      _CustomDisplayDoaaViewBodyState();
}

class _CustomDisplayDoaaViewBodyState extends State<CustomDisplayDoaaViewBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final item = GoRouterState.of(context).extra as String;
    List<String> displayDoaasList = [];
    switch (item) {
      case 'عن الرزق':
        displayDoaasList = elementsOfDoaaAboutLivelihoodList;
        break;
      case 'عن الستر':
        displayDoaasList = elementsOfDoaaAboutVeilList;
        break;
      case 'عن التوبة':
        displayDoaasList = elementsOfDoaaAboutRepentanceList;
        break;
      case 'عن طلب الزواج':
        displayDoaasList = elementsOfDoaaAboutMarriageProposalList;
        break;
      case 'عن عدم النسيان':
        displayDoaasList = elementsOfDoaaAboutNotForgettingList;
        break;
      case 'عن تسهيل الأمر':
        displayDoaasList = elementsOfDoaaAboutMakingItEasierList;
        break;
      default:
        displayDoaasList = [];
    }
    return Column(
      children: [
        SizedBoxHeight.height25(context: context),
        AppBarAndTextTypeDisplayViewSectionComponent(
          textTypeDisplayView: item,
          textAppBar: 'الدعاء',
        ),
        SizedBoxHeight.height25(context: context),
        Expanded(
          child: CardInsideItImageAndChooseAndDividerDisplayViewComponent(
            currentIndex: currentIndex,
            totalLength: displayDoaasList.length,
            onNext: () {
              if (currentIndex < displayDoaasList.length - 1) {
                setState(() => currentIndex++);
              }
            },
            onBack: () {
              if (currentIndex > 0) {
                setState(() => currentIndex--);
              }
            },
            child: Text(
              displayDoaasList[currentIndex],
              textDirection: TextDirection.rtl,
              style: StyleToTexts.textStyleNormal22(context: context),
            ),
          ),
        ),
        SizedBoxHeight.height10(context: context),
      ],
    );
  }
}
