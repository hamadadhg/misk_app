import 'package:flutter/material.dart';
import 'package:misk/core/components/black_divider_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/money/presentation/views/widgets/custom_header_money_view_section.dart';
import 'package:misk/features/money/presentation/views/widgets/custom_middle_money_view_section.dart';

class CustomMoneyViewBody extends StatefulWidget {
  const CustomMoneyViewBody({super.key});

  @override
  State<CustomMoneyViewBody> createState() => _CustomMoneyViewBodyState();
}

class _CustomMoneyViewBodyState extends State<CustomMoneyViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController textEditingController = TextEditingController();
  double amountMoney = 0;
  double? zakatMoney = 0;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBoxHeight.height25(context: context),
                const CustomHeaderMoneyViewSection(),
                SizedBoxHeight.height20(context: context),
                CustomMiddleMoneyViewSection(
                  textEditingController: textEditingController,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      amountMoney = double.parse(
                        textEditingController.text.trim(),
                      );
                      amountMoney *= 0.025;
                      final changeAmountMoneyToTwoPlacesAfterComma = amountMoney
                          .toStringAsFixed(2);
                      zakatMoney = double.tryParse(
                        changeAmountMoneyToTwoPlacesAfterComma,
                      );
                      setState(() {});
                    }
                  },
                  price: zakatMoney!,
                ),
                SizedBoxHeight.heightExpanded,
                const BlackAndWhiteDividerComponent(blackOrWhite: 'black'),
                SizedBoxHeight.height10(context: context),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
