import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final onchange =
    ChangeNotifierProvider<OnChangeNotifier>((ref) => OnChangeNotifier());

class OnChangeNotifier extends ChangeNotifier {
  String _postCategory = '';

  String get postcategory => _postCategory;

  changeType(String text) {
    if (text.isEmpty) {
      return _postCategory;
    }
    _postCategory = text;
    return notifyListeners();
  }
}
