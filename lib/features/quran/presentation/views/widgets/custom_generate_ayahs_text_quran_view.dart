/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misk/core/components/loading_state_component.dart';
import 'package:misk/core/components/text_error_state_component.dart';
import 'package:misk/features/quran/presentation/cubits/quran_text_cubit/quran_text_cubit.dart';
import 'package:misk/features/quran/presentation/cubits/quran_text_cubit/quran_text_state.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_success_state_quran_text_quran_view.dart';

class CustomGenerateAyahsTextQuranView extends StatelessWidget {
  const CustomGenerateAyahsTextQuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranTextCubit, QuranTextState>(
      builder: (context, state) {
        if (state is QuranTextSuccessState) {
          final surahNumber = state.surahNumber;
          return CustomSuccessStateQuranTextQuranView(surahNumber: surahNumber);
        } else if (state is QuranTextFailureState) {
          return SliverToBoxAdapter(
            child: TextErrorStateComponent(text: state.errorMessageInCubit),
          );
        } else {
          return const SliverToBoxAdapter(child: LoadingStateComponent());
        }
      },
    );
  }
}
*/
