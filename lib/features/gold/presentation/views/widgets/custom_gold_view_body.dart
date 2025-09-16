import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misk/core/components/loading_state_component.dart';
import 'package:misk/core/components/text_error_state_component.dart';
import 'package:misk/core/utils/maps/carat_gold_and_price_them_map.dart';
import 'package:misk/core/utils/shared/app_shared_preferences.dart';
import 'package:misk/core/utils/sized/sized_box_height.dart';
import 'package:misk/features/gold/presentation/cubits/gold_carats_cubit/gold_carats_cubit.dart';
import 'package:misk/features/gold/presentation/cubits/gold_carats_cubit/gold_carats_state.dart';
import 'package:misk/features/gold/presentation/views/widgets/custom_bottom_gold_view_section.dart';
import 'package:misk/features/gold/presentation/views/widgets/custom_header_gold_view_section.dart';
import 'package:misk/features/gold/presentation/views/widgets/custom_zakat_card_gold_view_section.dart';

class CustomGoldViewBody extends StatefulWidget {
  const CustomGoldViewBody({super.key});

  @override
  State<CustomGoldViewBody> createState() => _CustomGoldViewBodyState();
}

class _CustomGoldViewBodyState extends State<CustomGoldViewBody> {
  TextEditingController textEditingControllerGoldWeight =
      TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  num resultZakatGoldCarat = 0;
  String? caratGoldTheUserChooseIt;
  @override
  void initState() {
    AppSharedPreferences.getCaratGold().then((value) {
      setState(() {
        caratGoldTheUserChooseIt = value ?? '٢٤';
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    textEditingControllerGoldWeight.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: BlocBuilder<GoldCaratsCubit, GoldCaratsState>(
            builder: (context, state) {
              if (state is GoldCaratsSuccessState) {
                final priceGoldCarats = state.goldEntityInCubit;
                final priceGoldCaratTheUserChooseIt = caratsGoldAndPriceThemMap(
                  goldEntity: priceGoldCarats,
                )[caratGoldTheUserChooseIt];
                return Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBoxHeight.height25(context: context),
                      CustomHeaderGoldViewSection(
                        goldPrice: priceGoldCarats.priceGoldCarat24
                            .toStringAsFixed(2),
                      ),
                      SizedBoxHeight.height20(context: context),
                      CustomZakatCardGoldViewSection(
                        textEditingControllerGoldWeight:
                            textEditingControllerGoldWeight,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            final weight = num.tryParse(
                              textEditingControllerGoldWeight.text,
                            );
                            final putTwoPlacesAfterComma =
                                (weight! *
                                        priceGoldCaratTheUserChooseIt! *
                                        0.025)
                                    .toStringAsFixed(2);
                            final changeType = num.tryParse(
                              putTwoPlacesAfterComma,
                            );
                            setState(() {
                              resultZakatGoldCarat = changeType!;
                            });
                          }
                        },
                      ),
                      SizedBoxHeight.height20(context: context),
                      Expanded(
                        child: CustomBottomGoldViewSection(
                          price: resultZakatGoldCarat,
                        ),
                      ),
                      SizedBoxHeight.height10(context: context),
                    ],
                  ),
                );
              } else if (state is GoldCaratsFailureState) {
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
