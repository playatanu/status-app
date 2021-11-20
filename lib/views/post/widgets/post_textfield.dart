import 'package:mood/util/backgroung_textstyle_list.dart';
import 'package:mood/util/config.dart';
import 'package:mood/views/post/controller/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PostTextEdit extends StatelessWidget {
  const PostTextEdit({
    Key? key,
    required this.postcontoller,
  }) : super(key: key);

  final PostController postcontoller;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Obx(() => TextField(
                  controller: postcontoller.textEditingController,
                  onChanged: (value) {
                    // ignore: avoid_print
                    print(value);
                  },
                  cursorColor: white,
                  maxLength: 700,
                  textAlign: TextAlign.center,
                  style: maxfontstyle[postcontoller.textstyle.value],
                  minLines: 1,
                  maxLines: 15,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Type your Mood',
                    hintStyle:
                        TextStyle(color: white.withOpacity(0.5), fontSize: 40),
                  ),
                ))));
  }
}
