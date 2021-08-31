import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/core/model/request_state_notifier.dart';
import 'package:mini_postman/core/model/response/response_model.dart';
import 'package:mini_postman/core/notifer/state.notifier.dart';
import 'package:http/http.dart' as http;
import 'package:mini_postman/core/repositroy/base.api.dart';

final apiProvider = Provider<GetResponse>((ref) {
  return GetResponse(ref.read);
});

//!this output
final urlResponseProvider =
    StateNotifierProvider<GetResponseNotifer, RequestState>((ref) {
  return GetResponseNotifer(ref.watch(apiProvider));
});
//

class GetResponse implements BaseApi {
  int responseStatusCode = 0;
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
        final response = await http.get(Uri.parse(url));

        try {
          responseStatusCode = response.statusCode;

          final object = json.decode(response.body);

          body = const JsonEncoder.withIndent('  ').convert(object);
          ping = response.contentLength!;
          status = response.reasonPhrase!;
        } catch (e) {
          responseStatusCode = response.statusCode;
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
          responseStatusCode = response.statusCode;
          final object = json.decode(response.body);
          body = const JsonEncoder.withIndent('  ').convert(object);
          ping = response.contentLength!;
          status = response.reasonPhrase!;
        } catch (e) {
          responseStatusCode = response.statusCode;
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
            responseStatusCode = response.statusCode;
            final object = json.decode(response.body);
            body = const JsonEncoder.withIndent('  ').convert(object);
            ping = response.contentLength!;
            status = response.reasonPhrase!;
          } catch (e) {
            responseStatusCode = response.statusCode;
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
            responseStatusCode = response.statusCode;
            final object = json.decode(response.body);
            body = const JsonEncoder.withIndent('  ').convert(object);
            ping = response.contentLength!;
            status = response.reasonPhrase!;
          } catch (e) {
            responseStatusCode = response.statusCode;
            body = response.body;
            ping = response.contentLength!;
            status = response.reasonPhrase!;
          }
          ResponseModel(
              status: status,
              responsecode: responseStatusCode,
              newBody: body,
              ping: ping);
        } catch (e) {
          return throw Exception();
        }
        break;

      default:
        final response = await http.get(Uri.parse(url));

        try {
          responseStatusCode = response.statusCode;
          final object = json.decode(response.body);
          body = const JsonEncoder.withIndent('  ').convert(object);
          ping = response.contentLength!;
          status = response.reasonPhrase!;
        } catch (e) {
          responseStatusCode = response.statusCode;
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
