import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class PostController extends GetxController {
  var textEditingController = TextEditingController(),
      // ignore: non_constant_identifier_names
      background_color = 0.obs;

  // ignore: non_constant_identifier_names
  change_background_color(int index) {
    background_color.value = index;
  }

  // ignore: non_constant_identifier_names
  textEditing_clear() {
    textEditingController.clear();
  }
}
