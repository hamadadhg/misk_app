/*
import 'package:dio/dio.dart';
import 'package:misk/core/utils/constants/strings_variables_constant.dart';

class GoldServices {
  final Dio dio;
  GoldServices({required this.dio});
  Future<Map<String, dynamic>> getGoldCaratsServicesMethod() async {
    final response = await dio.get(
      kBaseUrlGoldApiSet,
      queryParameters: {
        'metals': 'XAU,XAG,XPT,XPD',
        'base_currency': 'KWD',
        'currencies': 'EUR,KWD,GBP,USD',
        'weight_unit': 'gram',
      },
      options: Options(headers: {'x-api-key': kApiKeyGoldApiSet}),
    );
    return response.data;
  }
}
*/
