import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:mood/util/background_color_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'controller/post_controller.dart';
import 'widgets/post_color_palate.dart';
import 'widgets/post_done_button.dart';
import 'widgets/post_textfield.dart';
import 'widgets/post_textstyle_button.dart';

// ignore: must_be_immutable
var postcontoller = PostController();

class PostPageInit extends StatelessWidget {
  const PostPageInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(PostPage());
          },
          child: Text('Post'),
        ),
      ),
    );
  }
}

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Container(
            color: colors[postcontoller.background_color.value],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Stack(alignment: Alignment.center, children: [
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: PostTextEdit(
                    postcontoller: postcontoller,
                  ),
                )),
                PostDoneButton(postcontoller: postcontoller),
                PostTextStyleButton(postcontoller: postcontoller),
                Positioned(
                    bottom: 20,
                    child: SizedBox(
                      height: 60,
                      width: 350,
                      child: Center(
                          child: ColorPalet(postcontoller: postcontoller)),
                    )),
              ]),
            )),
      ),
    );
  }
}
