import 'package:flutter/material.dart';
import 'package:misk/core/components/background_zakat_card_component.dart';
import 'package:misk/core/components/text_and_price_card_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/money/presentation/views/widgets/custom_contain_calculate_zakat_card_money_view.dart';

class CustomMiddleMoneyViewSection extends StatelessWidget {
  const CustomMiddleMoneyViewSection({
    super.key,
    required this.onPressed,
    required this.textEditingController,
    required this.price,
  });
  final void Function() onPressed;
  final TextEditingController textEditingController;
  final double price;
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return Column(
      children: [
        BackgroundZakatCardComponent(
          child: CustomContainCalculateZakatCardMoneyView(
            onPressed: onPressed,
            textEditingController: textEditingController,
          ),
        ),
        isPortrait == false
            ? SizedBoxHeight.height30(context: context)
            : SizedBoxHeight.height20(context: context),
        TextAndPriceCardComponent(price: price),
      ],
    );
  }
}
