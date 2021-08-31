import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:global_template/global_template.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mini_postman/app/constant.dart';
import 'package:mini_postman/app/generator/localization.dart';
import 'package:mini_postman/core/Hooks/tab_hooks.dart';
import 'package:mini_postman/core/notifer/onchange.dart';
import 'package:mini_postman/core/repositroy/getAPi.dart';
import 'package:mini_postman/meta/Home/methods/Response/response.dart';
import 'package:mini_postman/meta/Widget/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Home/methods/RequestAll/request.dart';

class HomePage extends HookConsumerWidget {
  static const route = 'home_page';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _tabcontroller = customTabController(length: 2);

    final _urlController = useTextEditingController();
    final _bodyController = useTextEditingController();
    final changed = ref.read(onchange);

    return Scaffold(
      drawer: const DrawersMini(),
      appBar: AppBar(
        title: LocaleKeys.homeTitle.tr().text.make(),
      ),
      body: VStack(
        [
          20.heightBox,
          TextFormFieldCustom(
            radius: 12,
            padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
            backgroundColor: Colors.transparent,
            keyboardType: TextInputType.url,
            suffixIcon: ElevatedButton(
              child: LocaleKeys.send.tr().text.make(),
              onPressed: () {
                postRequestButton(
                    bodyController: _bodyController,
                    context: context,
                    ref: ref,
                    urlController: _urlController);
              },
            ),
            prefixIcon: constant.items
                .textDropDown(
                  selectedValue: "GET",
                  onChanged: (value) {
                    changed.changeType(value!);
                  },
                )
                .make()
                .px4(),
            onFieldSubmitted: (value) {
              postRequestButton(
                  bodyController: _bodyController,
                  context: context,
                  ref: ref,
                  urlController: _urlController);
            },
            disableOutlineBorder: false,
            hintText: LocaleKeys.pasteUrl.tr(),
            controller: _urlController,
          ),
          TabBar(controller: _tabcontroller, tabs: [
            Tab(
              child: LocaleKeys.request.tr().text.subtitle1(context).make(),
            ),
            Tab(
              child: LocaleKeys.response.tr().text.subtitle1(context).make(),
            ),
          ]),
          Expanded(
              child: TabBarView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: _tabcontroller,
            children: [
              RequestTab(
                controller: _bodyController,
              ),
              const ResponsePage()
            ],
          ))
        ],
        crossAlignment: CrossAxisAlignment.center,
      ).px4(),
    ).safeArea();
  }

  void postRequestButton(
      {required TextEditingController urlController,
      required WidgetRef ref,
      required TextEditingController bodyController,
      required BuildContext context}) {
    final posturl = ref.read(urlResponseProvider.notifier);
    final values = ref.watch(onchange.notifier);

    final String type = values.postcategory;
    if (urlController.text.isNotEmpty) {
      switch (type) {
        case 'GET':
          log(values.postcategory);

          posturl.getResponses(urlController.text, values.postcategory, null);
          break;
        case 'POST':
          if (bodyController.text.isNotEmpty) {
            final Map keyword =
                jsonDecode(bodyController.text) as Map<dynamic, dynamic>;
            log(keyword.toString());
            posturl.getResponses(
                urlController.text, values.postcategory, keyword);
            break;
          } else {
            return GlobalFunction.showSnackBar(context,
                content: const Text('Add body'));
          }
        case 'PUT':
          final Map keyword =
              jsonDecode(bodyController.text) as Map<dynamic, dynamic>;
          posturl.getResponses(
              urlController.text, values.postcategory, keyword);
          break;
        case 'DELETE':
          posturl.getResponses(urlController.text, values.postcategory, null);
          break;

        default:
          posturl.getResponses(urlController.text, values.postcategory, null);
      }
    } else {
      GlobalFunction.showSnackBar(context, content: const Text('Url Is Empty'));
    }
  }
}
