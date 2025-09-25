/*
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:misk/core/errors/failures.dart';
import 'package:misk/features/silver/data/model/silver_model.dart';
import 'package:misk/features/silver/data/services/silver_services.dart';
import 'package:misk/features/silver/domain/entity/silver_entity.dart';
import 'package:misk/features/silver/domain/repositories/silver_repositories.dart';

class SilverRepositoriesImplementation implements SilverRepositories {
  final SilverServices silverServices;
  SilverRepositoriesImplementation({required this.silverServices});
  @override
  Future<Either<Failures, SilverEntity>> fetchCalculateSilverZakat() async {
    try {
      final result = await silverServices.getSilverGramPriceServicesMethod();
      return Right(SilverModel.fromJson(json: result));
    } on DioException catch (e) {
      return Left(ErrorServer.fromDioException(dioException: e));
    } on Exception catch (e) {
      return Left(ErrorServer(errorMessage: e.toString()));
    }
  }
}
*/
