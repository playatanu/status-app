// ignore_for_file: must_be_immutable
import 'package:mood/util/backgroung_textstyle_list.dart';
import 'package:mood/util/config.dart';
import 'package:mood/views/post/controller/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PostTextStyleButton extends StatelessWidget {
  const PostTextStyleButton({
    Key? key,
    required this.postcontoller,
  }) : super(key: key);

  final PostController postcontoller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      child: InkWell(
          onTap: () {
            postcontoller.change_textstyle();
            // ignore: avoid_print
            print(postcontoller.textstyle.value);
          },
          child: Container(
            //margin: const EdgeInsets.all(50.0),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  width: 2,
                  color: white,
                )),
            child: Obx(() => Text(
                  fontstylename[postcontoller.textstyle.value],
                  style: fontstyle[postcontoller.textstyle.value],
                )),
          )),
    );
  }
}
