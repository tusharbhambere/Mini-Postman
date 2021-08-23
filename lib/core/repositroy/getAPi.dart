import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/app/exception.dart';
import 'package:mini_postman/core/model/request_state_notifier.dart';
import 'package:mini_postman/core/model/response/response_model.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});
final apiProvider = Provider<GetResponse>((ref) {
  return GetResponse(ref.read);
});

//!this output
final urlResponseProvider =
    StateNotifierProvider<GetResponseNotifer, RequestState>((ref) {
  return GetResponseNotifer(ref.watch(apiProvider));
});
//

abstract class BaseApi {
  Future makeRequest({required String url, required String type});
}

class GetResponse implements BaseApi {
  String responseStatusCode = '';
  dynamic body = '';
  final Reader reader;

  GetResponse(this.reader);

  @override
  Future makeRequest({required String url, required String type}) async {
    switch (type) {
      case 'GET':
        try {
          final response = await reader(dioProvider).get(url);

          try {
            responseStatusCode = response.statusCode.toString();
            body = response.data;
            return ResponseModel(responsecode: responseStatusCode, body: body);
          } on DioError catch (e) {
            throw DataException.fromDioError(e);
          }
        } catch (e) {
          return throw Exception();
        }
      case "POST":
        try {
          final response = await reader(dioProvider).post(url, data: body);
          try {
            responseStatusCode = response.statusCode.toString();
            body = response.data;
            return ResponseModel(responsecode: responseStatusCode, body: body);
          } on DioError catch (e) {
            throw DataException.fromDioError(e);
          }
        } catch (e) {
          return throw Exception();
        }
      case "UPDATE":
        try {
          final response = await reader(dioProvider).put(url, data: body);
          try {
            responseStatusCode = response.statusCode.toString();
            body = response.data;
            return ResponseModel(responsecode: responseStatusCode, body: body);
          } on DioError catch (e) {
            throw DataException.fromDioError(e);
          }
        } catch (e) {
          return throw Exception();
        }
      case "DELETE":
        try {
          final response = await reader(dioProvider).delete(url);
          try {
            responseStatusCode = response.statusCode.toString();
            body = response.data;
            return ResponseModel(responsecode: responseStatusCode, body: body);
          } on DioError catch (e) {
            throw DataException.fromDioError(e);
          }
        } catch (e) {
          return throw Exception();
        }

      default:
    }
  }
}

class GetResponseNotifer extends RequestStateNotifier {
  final GetResponse getResponse;

  GetResponseNotifer(this.getResponse);
  getResponses(String url, String type) =>
      makeRequest(() => getResponse.makeRequest(url: url, type: type));
}
