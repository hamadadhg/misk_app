import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misk/features/quran/presentation/cubits/quran_text_cubit/quran_text_state.dart';

class QuranTextCubit extends Cubit<QuranTextState> {
  QuranTextCubit() : super(QuranTextInitialState());
  void getOnSurahTextMethodInCubit({required int? surahNumber}) {
    emit(QuranTextLoadingState());
    try {
      emit(QuranTextSuccessState(surahNumber: surahNumber));
    } on Exception catch (e) {
      emit(QuranTextFailureState(errorMessageInCubit: e.toString()));
    }
  }
}
