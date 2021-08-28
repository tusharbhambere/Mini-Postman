import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';

class BodyPage extends StatelessWidget {
  final TextEditingController editingController;
  const BodyPage({Key? key, required this.editingController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormFieldCustom(
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.newline,
        borderColor: Colors.blueAccent[200],
        hintText: 'Enter Json',
        disableOutlineBorder: false,
        controller: editingController,
      ),
    );
  }
}
