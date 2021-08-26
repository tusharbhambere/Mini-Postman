import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/core/model/request_state_notifier.dart';
import 'package:mini_postman/core/model/response/response_model.dart';
import 'package:http/http.dart' as http;

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
  String status = '';
  int ping = 0;
  dynamic body = '';
  final Reader reader;

  GetResponse(this.reader);

  @override
  Future makeRequest({required String url, required String type}) async {
    switch (type) {
      case 'GET':
        try {
          final response = await http.get(Uri.parse(url));

          try {
            responseStatusCode = response.statusCode.toString();
            body = response.body;
            ping = response.contentLength!;
            status = response.reasonPhrase!;
            return ResponseModel(
                status: status,
                responsecode: responseStatusCode,
                body: body,
                ping: ping);
          } catch (e) {
            return e.toString();
          }
        } catch (e) {
          return throw Exception();
        }
      case "POST":
        try {
          final response = await http.post(Uri.parse(url), body: body);
          try {
            responseStatusCode = response.statusCode.toString();
            body = response.body;
            ping = response.contentLength!;
            status = response.reasonPhrase!;
            return ResponseModel(
                status: status,
                responsecode: responseStatusCode,
                body: body,
                ping: ping);
          } catch (e) {
            return e.toString();
          }
        } catch (e) {
          return throw Exception();
        }
      case "UPDATE":
        try {
          final response = await http.put(Uri.parse(url), body: body);
          try {
            responseStatusCode = response.statusCode.toString();
            body = response.body;
            ping = response.contentLength!;
            status = response.reasonPhrase!;
            return ResponseModel(
                status: status,
                responsecode: responseStatusCode,
                body: body,
                ping: ping);
          } catch (e) {
            return e.toString();
          }
        } catch (e) {
          return throw Exception();
        }
      case "DELETE":
        try {
          final response = await http.delete(Uri.parse(url));
          try {
            responseStatusCode = response.statusCode.toString();
            body = response.body;
            ping = response.contentLength!;
            status = response.reasonPhrase!;
            return ResponseModel(
                status: status,
                responsecode: responseStatusCode,
                body: body,
                ping: ping);
          } catch (e) {
            return e.toString();
          }
        } catch (e) {
          return throw Exception();
        }

      default:
        try {
          final response = await http.get(Uri.parse(url));

          try {
            responseStatusCode = response.statusCode.toString();
            body = response.body;
            ping = response.contentLength!;
            status = response.reasonPhrase!;
            return ResponseModel(
                status: status,
                responsecode: responseStatusCode,
                body: body,
                ping: ping);
          } catch (e) {
            return e.toString();
          }
        } catch (e) {
          return throw Exception();
        }
    }
  }
}

class GetResponseNotifer extends RequestStateNotifier {
  final GetResponse getResponse;

  GetResponseNotifer(this.getResponse);
  getResponses(String url, String type) =>
      makeRequest(() => getResponse.makeRequest(url: url, type: type));
}
