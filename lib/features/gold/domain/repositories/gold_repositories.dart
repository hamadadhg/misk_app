import 'package:dartz/dartz.dart';
import 'package:misk/core/errors/failures.dart';
import 'package:misk/features/gold/domain/entity/gold_entity.dart';

abstract class GoldRepositories {
  Future<Either<Failures, GoldEntity>> fetchGoldCaratsRepositoriesMethod();
}
