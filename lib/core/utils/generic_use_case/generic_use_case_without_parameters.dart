import 'package:dartz/dartz.dart';
import 'package:misk/core/errors/failures.dart';

abstract class GenericUseCaseWithoutParameters<Type> {
  Future<Either<Failures, Type>> call();
}
