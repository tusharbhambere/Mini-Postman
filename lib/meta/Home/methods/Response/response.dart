import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/app/generator/localization.dart';
import 'package:mini_postman/core/model/response/response_model.dart';
import 'package:mini_postman/core/repositroy/getAPi.dart';
import 'package:mini_postman/meta/Home/methods/Response/widget/minibox.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:easy_localization/easy_localization.dart';

class ResponsePage extends HookConsumerWidget {
  static const approute = 'response';
  const ResponsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiGet = ref.watch(urlResponseProvider);

    return VxBox(
        child: apiGet.when(
      idle: () => Text(
        LocaleKeys.emptyResponse.tr(),
      ).centered(),
      success: (data) {
        final ResponseModel responseModel = data;
        final int code = responseModel.responsecode;

        return VxBox(
            child: SingleChildScrollView(
                child: VStack([
          HStack(
            [
              const Spacer(),
              MiniBox(
                type: 'Status',
                color: code > 300 ? Vx.red500 : Vx.green400,
                name: responseModel.status,
              ),
              MiniBox(
                type: 'Code',
                color: code > 300 ? Vx.red500 : Vx.green400,
                name: code.toString(),
              ),
              MiniBox(
                type: 'Ping',
                color: Vx.green400,
                name: responseModel.ping.toString(),
              )
            ],
            axisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceAround,
          ),
          VxBox(child: responseModel.newBody.text.make())
              .width(double.infinity)
              .border(color: Vx.green100)
              .make()
              .px12()
        ]))).make();
      },
      loading: () {
        return const CircularProgressIndicator().centered();
      },
      error: (error, stackTrace) {
        return Text(error.toString());
      },
    )).height(context.screenHeight).makeCentered();
  }
}
