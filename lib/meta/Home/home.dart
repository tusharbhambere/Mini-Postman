import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mini_postman/core/notifer/onchange.dart';
import 'package:mini_postman/core/repositroy/getAPi.dart';
import 'package:mini_postman/meta/Home/methods/RequestAll/request.dart';
import 'package:mini_postman/meta/Home/methods/Response/response.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends ConsumerStatefulWidget {
  static const route = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  late var _urlController = TextEditingController();
  late final TabController _tabcontroller;
  final List<String> _items = ['GET', 'POST', 'UPDATE', 'DELETE'];
  @override
  void initState() {
    _tabcontroller = TabController(length: 2, vsync: this);

    _urlController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabcontroller.dispose();
    _urlController.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            if (_urlController.text.trim().isNotEmpty) {
              posturl.getResponses(_urlController.text, values.postcategory);
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
          children: [RequestTab(), ResponsePage()],
        ))
      ]),
    ).safeArea();
  }
}

class RequestPage {}
