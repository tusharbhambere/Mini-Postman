abstract class BaseApi {
  Future makeRequest(
      {required String url,
      required String type,
      required Map<dynamic, dynamic> databody});
}
