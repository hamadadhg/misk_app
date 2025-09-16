import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misk/features/quran/presentation/cubits/quran_audio_cubit/quran_audio_cubit.dart';
import 'package:misk/gen/assets.gen.dart';

class CustomBackImageQuranView extends StatelessWidget {
  const CustomBackImageQuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context
            .read<QuranAudioCubit>()
            .delay10SecondsAudioMethodInCubit();
      },
      child: Assets.images.backToLast10SecondsImage.image(),
    );
  }
}
