/*
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misk/features/gold/data/repositories/gold_repositories_implementation.dart';
import 'package:misk/features/gold/presentation/cubits/gold_carats_cubit/gold_carats_state.dart';

class GoldCaratsCubit extends Cubit<GoldCaratsState> {
  final GoldRepositoriesImplementation goldRepositoriesImplementation;
  GoldCaratsCubit({required this.goldRepositoriesImplementation})
    : super(GoldCaratsInitialState());
  Future<void> getGoldCaratsPricesMethodInCubit() async {
    emit(GoldCaratsLoadingState());
    final result = await goldRepositoriesImplementation
        .fetchGoldCaratsRepositoriesMethod();
    result.fold(
      (failure) => Left(
        emit(GoldCaratsFailureState(errorMessageInCubit: failure.errorMessage)),
      ),
      (goldCaratsPrices) => Right(
        emit(GoldCaratsSuccessState(goldEntityInCubit: goldCaratsPrices)),
      ),
    );
  }
}
*/
