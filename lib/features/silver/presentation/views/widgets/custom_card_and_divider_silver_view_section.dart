import 'package:flutter/material.dart';
import 'package:misk/core/components/background_zakat_card_component.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/components/text_and_price_card_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/silver/presentation/views/widgets/custom_contain_zakat_card_silver_view.dart';

class CustomCardAndDividerSilverViewSection extends StatelessWidget {
  const CustomCardAndDividerSilverViewSection({
    super.key,
    required this.resultCalculateSilverZakat,
    required this.textEditingControllerSilverWeight,
    required this.onPressed,
  });
  final num resultCalculateSilverZakat;
  final TextEditingController textEditingControllerSilverWeight;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BackgroundZakatCardComponent(
          child: CustomContainZakatCardSilverView(
            textEditingControllerSilverWeight:
                textEditingControllerSilverWeight,
            onPressed: onPressed,
          ),
        ),
        SizedBoxHeight.height20(context: context),
        TextAndPriceCardComponent(price: resultCalculateSilverZakat),
        Expanded(child: SizedBoxHeight.height5(context: context)),
        const BlackAndWhiteDividerComponent(blackOrWhite: 'black'),
      ],
    );
  }
}
