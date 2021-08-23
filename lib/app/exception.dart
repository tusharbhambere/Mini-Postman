import 'package:dio/dio.dart';

class DataException implements Exception {
  DataException({required this.message});

  DataException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = 'Cancel';
        break;
      case DioErrorType.connectTimeout:
        message = 'TimeOut';
        break;
      case DioErrorType.receiveTimeout:
        message = 'receiveTimeOut';
        break;
      case DioErrorType.response:
        message = _handleError(dioError.response!.statusCode!);
        break;
      case DioErrorType.sendTimeout:
        message = 'Time';
        break;
      default:
        message = 'Error InternetConection';
        break;
    }
  }

  String message = "";

  String _handleError(int statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad Reqest';
      case 404:
        return 'Not found';
      case 500:
        return 'Internet Server';
      default:
        return 'Something went Wrong';
    }
  }

  @override
  String toString() => message;
}
