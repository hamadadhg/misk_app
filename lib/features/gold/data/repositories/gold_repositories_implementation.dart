import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:misk/core/errors/failures.dart';
import 'package:misk/features/gold/data/model/gold_model.dart';
import 'package:misk/features/gold/data/services/gold_services.dart';
import 'package:misk/features/gold/domain/entity/gold_entity.dart';
import 'package:misk/features/gold/domain/repositories/gold_repositories.dart';

class GoldRepositoriesImplementation implements GoldRepositories {
  final GoldServices goldServices;
  GoldRepositoriesImplementation({required this.goldServices});
  @override
  Future<Either<Failures, GoldEntity>>
  fetchGoldCaratsRepositoriesMethod() async {
    try {
      final result = await goldServices.getGoldCaratsServicesMethod();
      print('result: $result');
      return Right(GoldModel.fromJson(json: result));
    } on DioException catch (e) {
      return Left(ErrorServer.fromDioException(dioException: e));
    } on Exception catch (e) {
      return Left(ErrorServer(errorMessage: e.toString()));
    }
  }
}
