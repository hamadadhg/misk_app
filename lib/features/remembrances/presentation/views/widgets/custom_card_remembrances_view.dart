import 'package:flutter/material.dart';
import 'package:misk/core/utils/constants/strings_variables_constant.dart';
import 'package:misk/core/utils/helpers/push_go_router_helper.dart';
import 'package:misk/core/utils/padding/padding_without_child/only_padding_without_child.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/features/remembrances/presentation/views/widgets/custom_contain_card_remembrances_view.dart';

class CustomCardRemembrancesView extends StatelessWidget {
  const CustomCardRemembrancesView({
    super.key,
    required this.text,
    required this.image,
  });
  final String text;
  final Widget image;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return GestureDetector(
      onTap: () {
        pushGoRouterHelper(
          context: context,
          view: kDisplayRemembrancesViewRouter,
          extra: text,
        );
      },
      child: SizedBox(
        height: height * (isPortrait == false ? 0.14 : 0.077),
        child: Card(
          color: StyleToColors.whiteColor,
          elevation: 0,
          margin: OnlyPaddingWithoutChild.bottom10AndLeft30AndRight15(
            context: context,
          ),
          child: CustomContainCardRemembrancesView(text: text, image: image),
        ),
      ),
    );
  }
}
