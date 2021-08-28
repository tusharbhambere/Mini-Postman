import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/core/model/response/response_model.dart';
import 'package:mini_postman/core/repositroy/getAPi.dart';
import 'package:velocity_x/velocity_x.dart';

class ResponsePage extends HookConsumerWidget {
  static const approute = 'response';
  const ResponsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiGet = ref.watch(urlResponseProvider);

    return VxBox(
        child: apiGet.when(
      idle: () => Text('ENter Valid Url'),
      success: (data) {
        final ResponseModel responseModel = data;
        return VxBox(
            child: SingleChildScrollView(
                child: VStack([
          Text(responseModel.ping.toString()),
          Text(responseModel.status),
          Text(responseModel.responsecode),
          Text(responseModel.newBody),
        ]))).make();
      },
      loading: () {
        return CircularProgressIndicator().centered();
      },
      error: (error, stackTrace) {
        return Text(error.toString());
      },
    )).height(context.screenHeight).makeCentered();
  }
}
