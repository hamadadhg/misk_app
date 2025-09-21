import 'package:flutter/material.dart';
import 'package:misk/core/utils/constants/strings_variables_constant.dart';
import 'package:misk/core/utils/helpers/push_go_router_helper.dart';
import 'package:misk/core/utils/padding/padding_without_child/symmetric_padding_without_child.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/features/zakat_calculate/presentation/views/widgets/custom_contain_coin_card_zakat_view.dart';

class CustomCoinCardZakatView extends StatelessWidget {
  const CustomCoinCardZakatView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return SizedBox(
      height: height * (isPortrait == false ? 0.16 : 0.09),
      child: GestureDetector(
        onTap: () =>
            pushGoRouterHelper(context: context, view: kCoinsBoxViewRouter),
        child: Card(
          margin: SymmetricPaddingWithoutChild.horizontal30(context: context),
          color: StyleToColors.whiteColor,
          child: const Center(child: CustomContainCoinCardZakatView()),
        ),
      ),
    );
  }
}
