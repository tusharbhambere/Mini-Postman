import 'package:freezed_annotation/freezed_annotation.dart';
part 'response_model.freezed.dart';

@freezed
abstract class ResponseModel with _$ResponseModel {
  const factory ResponseModel(
      {required String responsecode, required dynamic body}) = _ResponseModel;
}
