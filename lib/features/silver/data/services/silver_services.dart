/*
import 'package:dio/dio.dart';
import 'package:misk/core/utils/constants/strings_variables_constant.dart';

class SilverServices {
  final Dio dio;
  SilverServices({required this.dio});
  Future<Map<String, dynamic>> getSilverGramPriceServicesMethod() async {
    final response = await dio.get(
      kBaseUrlSilverGoldApi,
      options: Options(
        headers: {
          'x-access-token': kApiKeySilverGoldApi,
          'Content-Type': 'application/json',
        },
      ),
    );
    return response.data;
  }
}
*/
