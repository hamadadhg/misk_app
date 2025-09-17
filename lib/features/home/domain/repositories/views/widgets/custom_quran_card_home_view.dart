import 'package:flutter/material.dart';
import 'package:misk/core/utils/constants/strings_variables_constant.dart';
import 'package:misk/core/utils/decorations/box_decorations.dart';
import 'package:misk/core/utils/helpers/push_go_router_helper.dart';
import 'package:misk/core/utils/padding/padding_without_child/symmetric_padding_without_child.dart';
import 'package:misk/features/home/domain/repositories/views/widgets/custom_contain_quran_card_home_view.dart';

class CustomQuranCardHomeView extends StatelessWidget {
  const CustomQuranCardHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return GestureDetector(
      onTap: () => pushGoRouterHelper(context: context, view: kQuranViewRouter),
      child: Container(
        height: height * (isPortrait == false ? 0.168 : 0.084),
        margin: SymmetricPaddingWithoutChild.horizontal30(context: context),
        padding: SymmetricPaddingWithoutChild.horizontal20(context: context),
        decoration: BoxDecorations.boxDecorationToQuranCardHomeView(
          context: context,
        ),
        child: const CustomContainQuranCardHomeView(),
      ),
    );
  }
}
