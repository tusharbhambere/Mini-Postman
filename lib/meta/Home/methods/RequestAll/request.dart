import 'package:flutter/material.dart';
import 'package:mini_postman/meta/Home/methods/RequestAll/body_page.dart';
import 'package:mini_postman/meta/Home/methods/RequestAll/headers_page.dart';
import 'package:velocity_x/velocity_x.dart';

class RequestTab extends StatelessWidget {
  static const route = 'request_page';
  const RequestTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(tabs: [
            Tab(
              child: VxBox(child: 'Headers'.text.black.make()).make(),
            ),
            Tab(
              child: VxBox(child: 'Body'.text.black.make()).make(),
            )
          ]),
          Expanded(
              child: TabBarView(
            children: [Headers(), BodyPage()],
          ))
        ],
      ),
    );
  }
}
