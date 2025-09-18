import 'package:flutter/material.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/arrows/presentation/views/widgets/custom_bottom_arrows_view_section.dart';
import 'package:misk/features/arrows/presentation/views/widgets/custom_header_arrows_view_section.dart';
import 'package:misk/features/arrows/presentation/views/widgets/custom_middle_arrows_view_section.dart';

class CustomArrowsViewBody extends StatefulWidget {
  const CustomArrowsViewBody({super.key});

  @override
  State<CustomArrowsViewBody> createState() => _CustomArrowsViewBodyState();
}

class _CustomArrowsViewBodyState extends State<CustomArrowsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController textEditingControllerArrowNumbers =
      TextEditingController();
  TextEditingController textEditingControllerArrowValues =
      TextEditingController();
  num zakatArrows = 0;

  @override
  void dispose() {
    textEditingControllerArrowNumbers.dispose();
    textEditingControllerArrowValues.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    //orientation to know what the position for device(vertical or horizontal)
    final isPortrait = orientation == Orientation.portrait;
    //boolean to ask about position the device if it is vertical
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBoxHeight.height25(context: context),
                const CustomHeaderArrowsViewSection(),
                SizedBoxHeight.height20(context: context),
                CustomMiddleArrowsViewSection(
                  textEditingControllerArrowNumbers:
                      textEditingControllerArrowNumbers,
                  textEditingControllerArrowValues:
                      textEditingControllerArrowValues,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final arrowNumbers = num.tryParse(
                        textEditingControllerArrowNumbers.text,
                      );
                      final arrowValues = num.tryParse(
                        textEditingControllerArrowValues.text,
                      );
                      final putTwoPlacesAfterComma =
                          (arrowValues! * arrowNumbers! * 0.025)
                              .toStringAsFixed(2);
                      final changeType = num.tryParse(putTwoPlacesAfterComma);
                      setState(() {
                        zakatArrows = changeType!;
                      });
                    }
                  },
                ),
                isPortrait == false
                    ? SizedBoxHeight.height30(context: context)
                    : SizedBoxHeight.height20(context: context),
                Expanded(
                  child: CustomBottomArrowsViewSection(price: zakatArrows),
                ),
                SizedBoxHeight.height10(context: context),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
