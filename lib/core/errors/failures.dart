import 'package:dio/dio.dart';

class Failures {
  final String errorMessage;
  Failures({required this.errorMessage});
}

class ErrorServer extends Failures {
  ErrorServer({required super.errorMessage});
  factory ErrorServer.fromDioException({required DioException dioException}) {
    return switch (dioException.type) {
      DioExceptionType.connectionTimeout => ErrorServer(
        errorMessage: 'خطأ: الأتصال استغرق وقت طويل',
      ),
      DioExceptionType.sendTimeout => ErrorServer(
        errorMessage: 'خطأ: الإرسال استغرق وقت طويل',
      ),
      DioExceptionType.receiveTimeout => ErrorServer(
        errorMessage: 'خطأ: الأستقبال استغرق وقت طويل',
      ),
      DioExceptionType.badCertificate => ErrorServer(
        errorMessage: 'خطأ: شهادة سيئة',
      ),
      // TODO: Handle this case.
      DioExceptionType.badResponse => throw UnimplementedError(),
      DioExceptionType.cancel => ErrorServer(
        errorMessage: 'خطأ: الطلب تم إلغاؤه',
      ),
      DioExceptionType.connectionError => ErrorServer(
        errorMessage: 'خطأ: يرجى التحقق من الشبكة',
      ),
      DioExceptionType.unknown => ErrorServer(
        errorMessage: 'خطأ: حدث خطأ غير متوقع يرجى المحاولة ثانية',
      ),
    };
  }
  factory ErrorServer.fromBadResponse({
    required dynamic response,
    required int statusCode,
  }) {
    return switch (statusCode) {
      400 => ErrorServer(errorMessage: 'خطأ: الطلب غير صحيح'),
      401 => ErrorServer(errorMessage: 'خطأ: غير مصرح يرجى المحاولة من جديد'),
      403 => ErrorServer(errorMessage: 'خطأ: غير مسموح لك بالوصول'),
      404 => ErrorServer(errorMessage: 'خطأ: طللبك غير موجود ابدا'),
      409 => ErrorServer(errorMessage: 'خطأ: يوجد تعارض في الطلب'),
      500 => ErrorServer(
        errorMessage: 'خطأ: مشكلة من مبرمج السيرفر يرجى المحاولة لاحقا',
      ),
      503 => ErrorServer(
        errorMessage:
            'خطأ: الخدمة غير متوفرة حاليا بسبب مبرمج السيرفر يرجى المحاولة لاحقا',
      ),
      _ => ErrorServer(
        errorMessage: 'خطأ: خطأ غير معروف من مبرمج السيرفر يرجى المحاولة لاحقا',
      ),
    };
  }
}
