import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:misk/core/utils/constants/durations_variables_constant.dart';
import 'package:misk/features/quran/presentation/cubits/quran_audio_cubit/quran_audio_state.dart';
import 'package:quran/quran.dart' as quran;

class QuranAudioCubit extends Cubit<QuranAudioState> {
  QuranAudioCubit() : super(QuranAudioInitialState()) {
    //listen to player state changes to update UI(to emit correct state)
    audioPlayer.playerStateStream.listen((playerState) {
      //i know audioPlayer Object because i declare on it until if the declare in the bottom Constructors
      if (playerState.processingState == ProcessingState.completed) {
        audioPlayer.seek(kZeroSeconds);
        emit(QuranAudioPauseAudioState());
        //the audio is completed so it's finish, and i tell it you should the return the timer/duration for audio to zero to restart the audio again(this will happen after finishing the audio)
      } else if (playerState.playing) {
        emit(QuranAudioPlayAudioState());
        //the audio is work so emit this state
      } else {
        emit(QuranAudioPauseAudioState());
        //any another state to audio you should emit this State Pause
      }
    });
    //you don't use emits to this States in the methods, because playerStateStream listen to changes in the States and it will emit appropriate state
  }
  int surahNumber = 1;
  final AudioPlayer audioPlayer = AudioPlayer();
  Future<void> playAudioMethodInCubit() async {
    //this method to play the audio
    try {
      String audioUrl = quran.getAudioURLBySurah(
        surahNumber,
        reciter: quran.Reciter.arAlafasy,
        bitrate: 128, //sound accuracy
      );
      await audioPlayer.setUrl(audioUrl);
      //set the url(sheikhSound, surah,..) so upload them
      await audioPlayer.play();
      //start play the audio(things you upload them)
    } catch (e) {
      emit(QuranAudioFailureState(errorMessageInCubit: e.toString()));
    }
  }

  Future<void> pauseAudioMethodInCubit() async {
    //this method to enable you to pause the audio
    try {
      await audioPlayer.pause();
    } catch (e) {
      emit(QuranAudioFailureState(errorMessageInCubit: e.toString()));
    }
  }

  Future<void> forward10SecondsAudioMethodInCubit() async {
    //this method to enable you skip 10 seconds in the audio
    try {
      final currentPosition = audioPlayer.position;
      //determined the current position for audio
      final newPosition = currentPosition + kTenSeconds;
      //so the new position is current position + 10 seconds position
      await audioPlayer.seek(newPosition);
      //.seek: make the audio seek(i mean put it) in this position
    } catch (e) {
      emit(QuranAudioFailureState(errorMessageInCubit: e.toString()));
    }
  }

  Future<void> delay10SecondsAudioMethodInCubit() async {
    //this method to enable you back 10 seconds in the audio
    try {
      final currentPosition = audioPlayer.position;
      //determined the current position for audio
      final newPosition = currentPosition - kTenSeconds;
      //so the new position is current position - 10 seconds position
      await audioPlayer.seek(
        newPosition >= kZeroSeconds ? newPosition : kZeroSeconds,
        //you should check, because not correct get on negative position
      );
      //.seek: make the audio seek(i mean put it) in this position
    } catch (e) {
      emit(QuranAudioFailureState(errorMessageInCubit: e.toString()));
    }
  }

  @override
  Future<void> close() {
    //automatically will trigger this method when the Cubit is closed(to clean up all audio resources and Prevents memory leaks and crashes)
    audioPlayer.dispose();
    return super.close();
  }
}
