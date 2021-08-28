import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:global_template/global_template.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/core/Hooks/tab_hooks.dart';
import 'package:mini_postman/core/notifer/onchange.dart';
import 'package:mini_postman/core/repositroy/getAPi.dart';
import 'package:mini_postman/meta/Home/methods/Response/response.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Home/methods/RequestAll/request.dart';

class HomePage extends HookConsumerWidget {
  static const route = 'home_page';
  final List<String> _items = ["GET", "POST", "PUT", "DELETE"];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _tabcontroller = customTabController(length: 2);

    final _urlController = useTextEditingController();
    final _bodyController = useTextEditingController();
    final posturl = ref.read(urlResponseProvider.notifier);
    var values = ref.watch(onchange.notifier);
    var changed = ref.read(onchange);

    return Scaffold(
      appBar: AppBar(
        title: 'Mini PostMan'.text.make(),
      ),
      body: VStack(
        [
          20.heightBox,
          TextFormFieldCustom(
            prefixIcon: _items
                .textDropDown(
                  selectedValue: "GET",
                  onChanged: (value) {
                    changed.changeType(value!);
                  },
                )
                .make(),
            onFieldSubmitted: (value) {
              log(values.postcategory);
              if (_urlController.text.isNotEmpty) {
                if (_bodyController.text.isNotEmpty) {
                  Map keyword = jsonDecode(_bodyController.text);
                  log(keyword.toString());
                  posturl.getResponses(
                      _urlController.text, values.postcategory, keyword);
                } else {
                  posturl.getResponses(
                      _urlController.text, values.postcategory, null);
                }
              } else {
                GlobalFunction.showSnackBar(context,
                    content: Text('uRL IS EMPTY'));
              }
            },
            disableOutlineBorder: false,
            hintText: 'Paste Url',
            controller: _urlController,
          ),
          TabBar(controller: _tabcontroller, tabs: [
            Tab(
              child: 'Request'.text.black.make(),
            ),
            Tab(
              child: 'Response'.text.black.make(),
            ),
          ]),
          Expanded(
              child: TabBarView(
            physics: AlwaysScrollableScrollPhysics(),
            controller: _tabcontroller,
            children: [
              RequestTab(
                controller: _bodyController,
              ),
              ResponsePage()
            ],
          ))
        ],
        crossAlignment: CrossAxisAlignment.center,
      ),
    ).safeArea();
  }
}
