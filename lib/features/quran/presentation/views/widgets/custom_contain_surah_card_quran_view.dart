import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misk/core/utils/helpers/quran_surah_to_return_number_it_helper.dart';
import 'package:misk/core/utils/shared/app_shared_preferences.dart';
import 'package:misk/features/quran/presentation/cubits/quran_audio_cubit/quran_audio_cubit.dart';
import 'package:misk/features/quran/presentation/cubits/quran_text_cubit/quran_text_cubit.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_popup_menu_item_quran_view.dart';
import 'package:misk/features/quran/presentation/views/widgets/custom_sura_text_quran_view.dart';

class CustomContainSurahCardQuranView extends StatefulWidget {
  const CustomContainSurahCardQuranView({super.key});

  @override
  State<CustomContainSurahCardQuranView> createState() =>
      _CustomContainSurahCardQuranViewState();
}

class _CustomContainSurahCardQuranViewState
    extends State<CustomContainSurahCardQuranView> {
  String selectedValue = 'سورة الفاتحة';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomPopupMenuItemQuranView(
          onSelected: (value) {
            setState(() {
              selectedValue = value;
              final surahNumber = quranSurahToReturnNumberItHelper(
                surahName: selectedValue,
              );
              context.read<QuranAudioCubit>().audioPlayer.stop();
              //stop the old audio that now it's playing
              context.read<QuranAudioCubit>().surahNumber = surahNumber;
              //change number the surah that you read and listen to it
              AppSharedPreferences.saveSurahNumber(surahNumber: surahNumber);
              context.read<QuranTextCubit>().getOnSurahTextMethodInCubit(
                surahNumber: surahNumber,
              ); //trigger quran text method
              context.read<QuranAudioCubit>().playAudioMethodInCubit();
              //trigger quran audio method(play)
            });
          },
        ),
        CustomSuraTextQuranView(selectedValue: selectedValue),
      ],
    );
  }
}
