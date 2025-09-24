import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misk/core/components/text_error_state_component.dart';
import 'package:misk/core/utils/helpers/show_snack_bar_helper.dart';
import 'package:misk/core/utils/sized/sized_box_width.dart';
import 'package:misk/core/utils/styles/style_to_colors.dart';
import 'package:misk/features/quran/presentation/cubits/quran_audio_cubit/quran_audio_cubit.dart';
import 'package:misk/features/quran/presentation/cubits/quran_audio_cubit/quran_audio_state.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_back_image_quran_view.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_front_image_quran_view.dart';

class CustomThreeImagesInPlayCardQuranView extends StatelessWidget {
  const CustomThreeImagesInPlayCardQuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranAudioCubit, QuranAudioState>(
      builder: (context, state) {
        if (state is QuranAudioFailureState) {
          return TextErrorStateComponent(text: state.errorMessageInCubit);
        } else {
          return Row(
            children: [
              const CustomBackImageQuranView(),
              SizedBoxWidth.width20(context: context),
              IconButton(
                icon: state is QuranAudioPlayAudioState
                    ? const Icon(Icons.pause, color: StyleToColors.whiteColor)
                    : const Icon(
                        Icons.play_arrow,
                        color: StyleToColors.whiteColor,
                      ),
                onPressed: () async {
                  if (state is QuranAudioPlayAudioState) {
                    // If already playing → stop
                    await context
                        .read<QuranAudioCubit>()
                        .pauseAudioMethodInCubit();
                  } else {
                    // If stopped or initial → play
                    showSnackBarHelper(context: context);
                    await context
                        .read<QuranAudioCubit>()
                        .playAudioMethodInCubit();
                  }
                },
              ),
              SizedBoxWidth.width20(context: context),
              const CustomFrontImageQuranView(),
            ],
          );
        }
      },
    );
  }
}
