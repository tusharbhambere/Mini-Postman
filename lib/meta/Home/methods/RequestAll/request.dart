import 'package:flutter/material.dart';
import 'package:mini_postman/meta/Home/methods/RequestAll/body_page.dart';
import 'package:mini_postman/meta/Home/methods/RequestAll/headers_page.dart';
import 'package:velocity_x/velocity_x.dart';

class RequestTab extends StatelessWidget {
  final TextEditingController controller;
  static const route = 'request_page';
  const RequestTab({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Headers(),
        50.heightBox,
        BodyPage(
          editingController: controller,
        )
      ],
    ).px12();
  }
}
