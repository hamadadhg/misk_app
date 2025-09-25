/*
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:misk/features/gold/data/repositories/gold_repositories_implementation.dart';
import 'package:misk/features/gold/data/services/gold_services.dart';
import 'package:misk/features/silver/data/repositories/silver_repositories_implementation.dart';
import 'package:misk/features/silver/data/services/silver_services.dart';

final getIt = GetIt.instance;
void setUp() {
  getIt.registerSingleton<GoldRepositoriesImplementation>(
    GoldRepositoriesImplementation(goldServices: GoldServices(dio: Dio())),
  );
  getIt.registerSingleton<SilverRepositoriesImplementation>(
    SilverRepositoriesImplementation(
      silverServices: SilverServices(dio: Dio()),
    ),
  );
}
*/
