import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:global_template/global_template.dart';
import 'package:global_template/widgets/reusable/textformfield_custom.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/core/notifer/onchange.dart';
import 'package:mini_postman/core/repositroy/getAPi.dart';
import 'package:mini_postman/meta/Home/methods/response.dart';

import 'package:velocity_x/velocity_x.dart';

class HomePage extends HookConsumerWidget {
  static const appRoute = '/home_page';
  final List<String> _items = ['GET', 'POST', 'UPDATE', 'DELETE'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final urlController = useTextEditingController();
    final posturl = ref.read(urlResponseProvider.notifier);
    var values = ref.watch(onchange.notifier);
    var changed = ref.read(onchange);

    return Scaffold(
      appBar: AppBar(
        title: 'Mini PostMan'.text.make(),
      ),
      body: VStack([
        20.heightBox,
        TextFormFieldCustom(
          prefixIcon: _items
              .textDropDown(
                selectedValue: 'GET',
                onChanged: (value) {
                  log(value!);
                  changed.changeType(value);
                },
              )
              .make(),
          onFieldSubmitted: (value) {
            if (urlController.text.trim().isNotEmpty) {
              posturl.getResponses(urlController.text, values.postcategory);
            } else {
              GlobalFunction.showSnackBar(context,
                  content: Text('uRL IS EMPTY'));
            }
          },
          disableOutlineBorder: false,
          hintText: 'Paste Url',
          controller: urlController,
        ),
        Expanded(child: Response())
      ]),
    ).safeArea();
  }
}
