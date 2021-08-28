import 'dart:convert';
import 'dart:developer';

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
  Future makeRequest(
      {required String url,
      required String type,
      required Map<dynamic, dynamic> databody});
}

class GetResponse implements BaseApi {
  String responseStatusCode = '';
  String status = '';
  int ping = 0;
  String body = '';
  final Reader reader;

  GetResponse(this.reader);

  @override
  Future makeRequest(
      {required String url,
      required String type,
      Map<dynamic, dynamic>? databody}) async {
    switch (type) {
      case "GET":
        log(type);
        final response = await http.get(Uri.parse(url));

        try {
          responseStatusCode = response.statusCode.toString();
          var object = json.decode(response.body);
          body = JsonEncoder.withIndent('  ').convert(object);
          ping = response.contentLength!;
          status = response.reasonPhrase!;
        } catch (e) {
          responseStatusCode = response.statusCode.toString();
          ping = response.contentLength!;
          status = response.reasonPhrase!;
        }
        return ResponseModel(
            status: status,
            responsecode: responseStatusCode,
            newBody: body,
            ping: ping);

      case "POST":
        final response = await http.post(Uri.parse(url), body: databody);
        try {
          responseStatusCode = response.statusCode.toString();
          var object = json.decode(response.body);
          body = JsonEncoder.withIndent('  ').convert(object);
          ping = response.contentLength!;
          status = response.reasonPhrase!;
        } catch (e) {
          responseStatusCode = response.statusCode.toString();
          body = response.body;
          ping = response.contentLength!;
          status = response.reasonPhrase!;
        }
        return ResponseModel(
            responsecode: responseStatusCode,
            status: status,
            newBody: body,
            ping: ping);

      case "PUT":
        try {
          final response = await http.put(Uri.parse(url), body: body);
          try {
            responseStatusCode = response.statusCode.toString();
            var object = json.decode(response.body);
            body = JsonEncoder.withIndent('  ').convert(object);
            ping = response.contentLength!;
            status = response.reasonPhrase!;
          } catch (e) {
            responseStatusCode = response.statusCode.toString();
            body = response.body;
            ping = response.contentLength!;
            status = response.reasonPhrase!;
          }
          return ResponseModel(
              status: status,
              responsecode: responseStatusCode,
              newBody: body,
              ping: ping);
        } catch (e) {
          return throw Exception();
        }
      case "DELETE":
        try {
          final response = await http.delete(Uri.parse(url));
          try {
            responseStatusCode = response.statusCode.toString();
            var object = json.decode(response.body);
            body = JsonEncoder.withIndent('  ').convert(object);
            ping = response.contentLength!;
            status = response.reasonPhrase!;
          } catch (e) {
            responseStatusCode = response.statusCode.toString();
            body = response.body;
            ping = response.contentLength!;
            status = response.reasonPhrase!;
          }
          return ResponseModel(
              status: status,
              responsecode: responseStatusCode,
              newBody: body,
              ping: ping);
        } catch (e) {
          return throw Exception();
        }

      default:
        final response = await http.get(Uri.parse(url));

        try {
          responseStatusCode = response.statusCode.toString();
          var object = json.decode(response.body);
          body = JsonEncoder.withIndent('  ').convert(object);
          ping = response.contentLength!;
          status = response.reasonPhrase!;
        } catch (e) {
          responseStatusCode = response.statusCode.toString();
          body = response.body;
          ping = response.contentLength!;
          status = response.reasonPhrase!;
        }
        return ResponseModel(
            status: status,
            responsecode: responseStatusCode,
            newBody: body,
            ping: ping);
    }
  }
}

class GetResponseNotifer extends RequestStateNotifier {
  final GetResponse getResponse;

  GetResponseNotifer(this.getResponse);
  getResponses(String url, String type, Map<dynamic, dynamic>? data) =>
      makeRequest(
          () => getResponse.makeRequest(url: url, type: type, databody: data));
}
