import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MiniBox extends StatelessWidget {
  final String name;
  final String type;
  final Color color;
  const MiniBox(
      {Key? key, required this.name, required this.color, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: VStack(
          [type.text.xs.make().p1(), name.text.bold.make().centered().p1()]),
    ).color(color).make().px12();
  }
}
