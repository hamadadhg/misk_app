/*
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misk/features/silver/data/repositories/silver_repositories_implementation.dart';
import 'package:misk/features/silver/presentation/cubits/silver_cubit/silver_state.dart';

class SilverCubit extends Cubit<SilverState> {
  SilverCubit({required this.silverRepositoriesImplementation})
    : super(SilverInitialState());
  final SilverRepositoriesImplementation silverRepositoriesImplementation;
  Future<void> getPriceGramSilverInCubitMethod() async {
    emit(SilverLoadingState());
    final result = await silverRepositoriesImplementation
        .fetchCalculateSilverZakat();
    result.fold(
      (failure) =>
          emit(SilverFailureState(errorMessageInCubit: failure.errorMessage)),
      (priceSilverGram) =>
          emit(SilverSuccessState(silverEntity: priceSilverGram)),
    );
  }
}
*/
