import 'package:mini_postman/core/model/request_state_notifier.dart';
import 'package:mini_postman/core/repositroy/getAPi.dart';

class GetResponseNotifer extends RequestStateNotifier {
  final GetResponse getResponse;

  GetResponseNotifer(this.getResponse);
  getResponses(String url, String type, Map<dynamic, dynamic>? data) =>
      makeRequest(
          () => getResponse.makeRequest(url: url, type: type, databody: data));
}
