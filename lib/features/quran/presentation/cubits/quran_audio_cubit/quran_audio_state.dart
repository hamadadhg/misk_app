abstract class QuranAudioState {}

class QuranAudioInitialState extends QuranAudioState {}

class QuranAudioFailureState extends QuranAudioState {
  final String errorMessageInCubit;
  QuranAudioFailureState({required this.errorMessageInCubit});
}

class QuranAudioPlayAudioState extends QuranAudioState {}

class QuranAudioPauseAudioState extends QuranAudioState {}
