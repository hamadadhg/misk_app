/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misk/core/components/loading_state_component.dart';
import 'package:misk/core/components/text_error_state_component.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/silver/presentation/cubits/silver_cubit/silver_cubit.dart';
import 'package:misk/features/silver/presentation/cubits/silver_cubit/silver_state.dart';
import 'package:misk/features/silver/presentation/views/widgets/custom_card_and_divider_silver_view_section.dart';
import 'package:misk/features/silver/presentation/views/widgets/custom_header_silver_view_section.dart';

class CustomSilverViewBody extends StatefulWidget {
  const CustomSilverViewBody({super.key});

  @override
  State<CustomSilverViewBody> createState() => _CustomSilverViewBodyState();
}

class _CustomSilverViewBodyState extends State<CustomSilverViewBody> {
  TextEditingController textEditingController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  num calculateSilverZakat = 0;
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: BlocBuilder<SilverCubit, SilverState>(
            builder: (context, state) {
              if (state is SilverSuccessState) {
                final changePriceToTwoPlaceAfterComma = state
                    .silverEntity
                    .priceSilverGram
                    .toStringAsFixed(2);
                final priceGramSilver = num.tryParse(
                  changePriceToTwoPlaceAfterComma,
                );
                return Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBoxHeight.height25(context: context),
                      CustomHeaderSilverViewSection(
                        price: priceGramSilver.toString(),
                      ),
                      SizedBoxHeight.height20(context: context),
                      Expanded(
                        child: CustomCardAndDividerSilverViewSection(
                          resultCalculateSilverZakat: calculateSilverZakat,
                          textEditingControllerSilverWeight:
                              textEditingController,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              final weight = num.tryParse(
                                textEditingController.text,
                              );
                              final changecalculateSilverZakatToTwoPlacesAfterComma =
                                  (weight! * priceGramSilver! * 0.025)
                                      .toStringAsFixed(2);
                              final parseResultToNum = num.tryParse(
                                changecalculateSilverZakatToTwoPlacesAfterComma,
                              );
                              setState(() {
                                calculateSilverZakat = parseResultToNum!;
                              });
                            }
                          },
                        ),
                      ),
                      SizedBoxHeight.height10(context: context),
                    ],
                  ),
                );
              } else if (state is SilverFailureState) {
                return TextErrorStateComponent(text: state.errorMessageInCubit);
              } else {
                return const LoadingStateComponent();
              }
            },
          ),
        ),
      ],
    );
  }
}
*/
